import requests

webhook = "https://discord.com/api/webhooks/"
notify = True
tag_id = "756906669170098337"

def send_discord_webhook(message):
    if webhook:
        payload = {
            "content": f"<@{tag_id}> {message}"
        }
        try:
            response = requests.post(webhook, json=payload)
            print("ส่งสำเร็จ" if response.status_code == 204 else f"ล้มเหลว: {response.status_code}")
        except Exception as e:
            print(f"ข้อผิดพลาด: {e}")

if notify:
    send_discord_webhook("Script started")

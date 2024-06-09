# From what I remember, setting up the Python env was kinda tricky, so I'll just leave some links to 
# help the next time you need to set this up. Once you do, definitely automate it. 
# Repo
# https://github.com/AUTOMATIC1111/stable-diffusion-webui
# Install Instructions
# https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs
# Download Models
# https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#stable-diffusion-20
sudo dnf install -y python310
cd ~/.local/share/sunhat/packages/
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui
python3.10 -m venv venv
cp ~/.local/share/sunhat/configs/stable_diffusion/webui-user.sh ~/.local/share/sunhat/packages/stable-diffusion-webui/webui-user.sh
cp ~/.local/share/sunhat/configs/stable_diffusion/stable_diffusion.service ~/.config/systemd/user/stable_diffusion.service
curl -o ~/.local/share/sunhat/packages/stable-diffusion-webui/models/Stable-diffusion/sd_xl_base_1.0_0.9vae.safetensors \
  https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/raw/main/sd_xl_base_1.0_0.9vae.safetensors
curl -o ~/.local/share/sunhat/packages/stable-diffusion-webui/models/VAE/sdxl_vae.safetensors \
  https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/raw/main/sdxl_vae.safetensors
systemctl --user enable --now stable_diffusion
systemctl --user status stable_diffusion
echo "Done!"
echo "If everything went right, the Stable Diffusion service should be running, & SDXL should be installed."
echo "GitHub with Links & Instructions:"
echo "https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#stable-diffusion-20"

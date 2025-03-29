export PYTHONUNBUFFERED="True"
LOG="../log/train-`date +'%Y-%m-%d-%H-%M-%S'`.log"
python cpm_train.py --gpu 0 1 --train_dir ../dataset/train/lspet_dataset --val_dir ../dataset/val/lsp_dataset --config ../config/config.yml > $LOG
python cpm_train.py --gpu 0 --train_dir ../dataset/lspet_dataset --val_dir ../dataset/lsp_dataset --config ../config/config.yml > ../log/train-output.log
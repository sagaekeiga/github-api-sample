```javascript
document.addEventListener('DOMContentLoaded', () => {
  const addPhotoButton = document.getElementById('add-photo-button');
  const photoUploadContainer = document.getElementById('photo-upload-container');

  addPhotoButton.addEventListener('click', () => {
    const newPhotoInput = document.createElement('input');
    newPhotoInput.type = 'file';
    newPhotoInput.name = 'plan[photos][]'; // 複数の写真をアップロードするための名前
    newPhotoInput.accept = 'image/*';
    
    const newPhotoPreview = document.createElement('img');
    newPhotoPreview.classList.add('photo-preview');
    newPhotoPreview.style.display = 'none'; // 初期は非表示

    newPhotoInput.addEventListener('change', (event) => {
      const file = event.target.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = (e) => {
          newPhotoPreview.src = e.target.result;
          newPhotoPreview.style.display = 'block'; // 画像を表示
        };
        reader.readAsDataURL(file);
      }
    });

    photoUploadContainer.appendChild(newPhotoInput);
    photoUploadContainer.appendChild(newPhotoPreview);
  });
});
```

```
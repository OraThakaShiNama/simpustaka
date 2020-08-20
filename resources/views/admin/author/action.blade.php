<a href="{{ route('admin.author.edit', $model) }}" class="btn btn-warning btn-sm"><i class="far fa-edit"></i></a>
<button href="{{ route('admin.author.destroy', $model) }}" class="btn btn-danger btn-sm" id="delete"><i
        class="far fa-trash-alt"></i></button>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
    $('button#delete').on('click', function(e){
        e.preventDefault();

        var href = $(this).attr('href');

        Swal.fire({
        title: 'Apa kamu yakin hapus data ini?',
        text: "Data yang di hapus tidak bisa di kembalikan!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, hapus saja'
        }).then((result) => {
        if (result.value) {
            
            document.getElementById('deleteForm').action = href;
            document.getElementById('deleteForm').submit();
            
                Swal.fire(
                    'Terhapus!',
                    'Data kamu berhasil di hapus.',
                    'success'
                )
            }
        })
    })
</script>
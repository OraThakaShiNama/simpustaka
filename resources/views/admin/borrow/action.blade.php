<button href="{{ route('admin.borrow.return', $model) }}" class="btn btn-info btn-sm" id="return">Pengembalian</button>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
    $('button#return').on('click', function(e){
        e.preventDefault();

        var href = $(this).attr('href');

        Swal.fire({
        title: 'Apa kamu yakin data sudah benar?',
        text: "Pastikan data & buku yang di kembalikan benar!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, Data sudah di cek'
        }).then((result) => {
        if (result.value) {
            
            document.getElementById('returnForm').action = href;
            document.getElementById('returnForm').submit();
            
                Swal.fire(
                    'Dikembalikan!',
                    'Data kamu berhasil di kembalikan.',
                    'success'
                )
            }
        })
    })
</script>
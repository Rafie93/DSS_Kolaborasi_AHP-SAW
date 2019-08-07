function currency_to_num(str)
{
	if (str == '') return 0;
	str = str.replace(/\./g, '');
	return parseInt(str);
}

function formatAngka(angka) {
	if (angka==null) {
		angka=0;
	}else{
	   if (typeof(angka) != 'string') angka = angka.toString();
	   var reg = new RegExp('([0-9]+)([0-9]{3})');
	   while(reg.test(angka)) angka = angka.replace(reg, '$1,$2');
	}
	return angka;
 }
  function FormatCurrency(objNum)
    {	
        var num = objNum.value
        if(num==undefined)
            var num = objNum.val();
        var ent, dec;

        if (num != '' && num != objNum.oldvalue)
        {
            num = MoneyToNumber(num);
            if (isNaN(num))
            {		
                objNum.value = (objNum.oldvalue)?objNum.oldvalue:'';
            } else {
                var ev = (navigator.appName.indexOf('Netscape') != -1)?Event:event;
		
                if (ev.keyCode == 190 || !isNaN(num.split('.')[1]))
                {	
                    objNum.value = AddCommas(num.split('.')[0])+'.'+num.split('.')[1];
                }
                else
                {	
                    objNum.value = AddCommas(num.split('.')[0]);
                }
		
                objNum.oldvalue = objNum.value;
            }
        }
    }
     function MoneyToNumber(num)
        {
            if(num != '' && num != null)
            {
                // return num.split(',').join('');
                return num.toString().replace(/,/g, '');
            }
            else
            {
                return parseInt(0);
            }
        }

        function NumberToMoney(num)
        {
            numberArr = new String(num).split(',');
            numArr=new String(numberArr[0]).split('').reverse();
            for (i=3;i<numArr.length;i+=3)
            {
                numArr[i]+=',';
            }
            numberArr[0] = numArr.reverse().join('');
            if (numberArr[1] == null || numberArr[1] == '') numberArr[1] = '00';
            return numberArr[0] + "." + numberArr[1];
        }
         function AddCommas(num)
        {
            numArr=new String(num).split('').reverse();
            for (i=3;i<numArr.length;i+=3)
            {
                numArr[i]+=',';
            }
            return numArr.reverse().join('');
        }

        function parseToFloat(num) {
            if (num != null && num != '') {
              if (num.indexOf(',') > 0) {
                num   = num.replace(/,/g, '.');
              }
            } else {
              num = '0' ;
            }
            num = parseFloat(num).toFixed(2);
            return num ;
        }


$().ready(function() {
	
	function check_required()
	{
		if ($(this).val() == '') $(this).closest('.form-group').addClass('has-error');
		else $(this).closest('.form-group').removeClass('has-error');
	}
	
	$('[type=text], [type=email], [type=password]').attr('autocomplete', 'off');
	
	// $('.datepicker').Zebra_DatePicker({ offset: [ -226, 303 ] });
	// $('.datepicker-month').Zebra_DatePicker({ view: 'months', format: 'Y-m', offset: [ -226, 303 ] });
	// $('.datepicker-year').Zebra_DatePicker({ view: 'years', format: 'Y', offset: [ -226, 303 ] });
	
	$('.required').blur(check_required);
	$('select.required').change(check_required);
	

	
	// $('.number').autoNumeric('init', {
	// 	aSep: '.', aDec: ',', aSign: '', mDec: '0'
	// });
	
	// $('.decimal').autoNumeric('init', {
	// 	aSep: '.', aDec: ',', aSign: ''
	// });
	
	// $('.currency').autoNumeric('init', {
	// 	aSep: '.', aDec: ',', aSign: 'Rp ', mDec: '0'
	// });
	
	// $('.percent').autoNumeric('init', {
	// 	aSep: '.', aDec: ',', aSign: '%', pSign: 's'
	// });

	var flash_data = $('#flashdata').val();
	if( flash_data == 'insert'){
		toastr.success("Data Berhasil Disimpan");
	}else if (flash_data == 'update'){
		toastr.success("Data Berhasil Diubah");
	}else if (flash_data == 'delete'){
		toastr.success("Data Berhasil Dihapus");
	}
	
	$('.validate-form').submit(function() {
		var has_error = false;
		$.each($('.required'), function(idx, obj) {
			if ($(obj).val() == '') {
				$(obj).closest('.form-group').addClass('has-error');
				has_error = true;
			}
		});

		if (has_error) {
			// swal('Mohon lengkapi form!');
			toastr.error("Mohon Lengkapi Form",{
            "timeOut": "0",
            "extendedTImeout": "0"
        	});
			$(this).find('.has-error .form-control').first().focus();
		}
		else {
			$(this).find('.form-control').attr('readonly', true);
			$(this).find('button[type=submit]').attr('disabled', true);
			$(this).find('button[type=submit]').text('Sedang menyimpan...');
		}
		
		return !has_error;
	});

	function check_row(obj)
	{
		var border;
		var color;
		
		if ($(obj).is(':checked')) {
			border = '#aca';
			if ($(obj).hasClass('odd')) color = '#bfefbf';
			if ($(obj).hasClass('even')) color = '#cfffcf';
		}
		else {
			border = '#ddd';
			if ($(obj).hasClass('odd')) color = '#f9f9f9';
			if ($(obj).hasClass('even')) color = '#fff';
		}
		
		$(obj).parent().parent().children().css({ 'border-top-color': border });
		$(obj).parent().parent().children().css({ 'background': color });
	}
	
	$('.check-all').click(function() {
		var is_checked = $(this).is(':checked');
		$('.checkbox').each(function() {
			$(this).prop('checked', is_checked);
			check_row(this);
		});
	});
	
	$('.checkbox').click(function() {
		check_row(this);

		jml_checked = $('.checkbox:checked').length;
		jmlall_checked = $('.checkbox').length;

		if(jml_checked == jmlall_checked){
        	$('.check-all').prop("checked", true);
		}else{
        	$('.check-all').attr("checked", false);
		}
	});
	
	$('.profile-tab a').click(function() {
		$('.profile-tab li.active').removeClass('active');
		$(this).parent().addClass('active');
	});
	
	$('#btn-delete').click(function() {
		var can_submit = false;
		$('.checkbox').each(function() {
			if ($(this).is(':checked')) can_submit = true;
		});
		
		if (can_submit) {
			swal ({
				title: 'Hapus Data!'
				, text: 'Apa Anda yakin untuk menghapus data?'
				, type: 'warning'
				, showCancelButton: true
				, confirmButtonClass: 'btn-danger'
				, confirmButtonText: 'Ya, hapus data!'
				, cancelButtonText: 'Tidak'
				, closeOnConfirm: false
				, closeOnCancel: true
			},
			function(is_confirmed) {
				if (is_confirmed) $('#form-grid').submit();
			});
		}
		else {
			// swal('Tidak ada data yang dihapus!');
			toastr.error("Tidak ada data yang dihapus",{
            "timeOut": "0",
            "extendedTImeout": "0"
        	});
			return false;
		}
	});

	$('[title=Hapus]').click(function(e) {
		e.preventDefault();
		var href = $(this).attr('href');
		
		swal ({
			title: 'Hapus Data!'
			, text: 'Apa Anda yakin untuk menghapus data tersebut?'
			, type: 'warning'
			, showCancelButton: true
			, confirmButtonClass: 'btn-danger'
			, confirmButtonText: 'Ya, hapus data!'
			, cancelButtonText: 'TIDAK'
			, closeOnConfirm: false
			, closeOnCancel: true
		},
		function(is_confirmed) {
			if (is_confirmed) {
				$('.sa-confirm-button-container button').attr('disabled', true);
				window.location = href;
			}
		});
	});
	
	$('[title=Status]').click(function(e) {
		e.preventDefault();
		var href = $(this).attr('href');
		
		swal ({
			title: 'Perubahan Status Data!'
			, text: 'Apa Anda yakin untuk mengubah data tersebut?'
			, type: 'warning'
			, showCancelButton: true
			, confirmButtonClass: 'btn-danger'
			, confirmButtonText: 'Ya, ubah data!'
			, cancelButtonText: 'TIDAK'
			, closeOnConfirm: false
			, closeOnCancel: true
		},
		function(is_confirmed) {
			if (is_confirmed) {
				$('.sa-confirm-button-container button').attr('disabled', true);
				window.location = href;
			}
		});
	});
	
});

	
var enable_numeric = 1;

function numeric()
{

	if(enable_numeric == 0)
    {
        $(".numeric").off('keydown');
    }

	var keys = 0;
	$(".numeric").keydown(function(event) {
		keys = event.keyCode;
		// Allow: backspace, delete, tab, escape, and enter
        if (event.keyCode == 116 || event.keyCode == 46 || event.keyCode == 188 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || 
             // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) || 
             // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 39) || event.keyCode == 190 || event.keyCode == 110|| event.keyCode == 188) {
                 // let it happen, don't do anything
				return;
        }
        else {
            // Ensure that it is a number and stop the keypress
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                event.preventDefault(); 
            }   
        }
    });

}
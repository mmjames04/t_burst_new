function setRandomHashTag(){var a="/computer.json";$.ajax({type:"GET",url:a,dataType:"json",success:function(a){$("#hash1").empty(),$("#hash2").empty(),renderHashTag(a)},error:function(){alert("Broken")}})}function renderHashTag(a){$("#hash1").append(a.tag),$("#hash2").append(a.tag)}setRandomHashTag();
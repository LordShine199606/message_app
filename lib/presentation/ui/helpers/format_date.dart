// Nome:Miguel Manuel 
// email:miguelmanuel277shine@gmail.com
// telefone:940965552

String formateDate(DateTime? date, {bool showTime = false, bool showOnlyTime = false, String stringDivider = "-"}) {

  date = date?.toLocal();
  
  if (date == null) {
    return "Sem data";
  } else {
    // ignore: unused_local_variable
    String month = "";

    switch (date.month) {
      case 1:
        month = "Janeiro";
        break;

      case 2:
        month = "Fevereiro";
        break;

      case 3:
        month = "Março";
        break;

      case 4:
        month = "Abril";
        break;

      case 5:
        month = "Maio";
        break;

      case 6:
        month = "Junho";
        break;

      case 7:
        month = "Julho";
        break;

      case 8:
        month = "Agosto";
        break;

      case 9:
        month = "Setembro";
        break;

      case 10:
        month = "Outubro";
        break;

      case 11:
        month = "Novembro";
        break;

      case 12:
        month = "Dezembro";
        break;
    }

    return showOnlyTime
      ? "${date.hour.toString().length == 1 ? '0${date.hour}' : date.hour.toString()}:${date.minute.toString().length == 1 ? '0${date.minute}' : date.minute.toString()}:${date.second.toString().length == 1 ? '0${date.second}' : date.second.toString()}"
      : !showTime
        ? "${date.day.toString().length == 1 ? '0${date.day}' : date.day }$stringDivider${date.month.toString().length == 1 ? '0${date.month}' : date.month}$stringDivider${date.year}"
        : "${date.day.toString().length == 1 ? '0${date.day}' : date.day }$stringDivider${date.month.toString().length == 1 ? '0${date.month}' : date.month}$stringDivider${date.year} ${date.hour}h${date.minute.toString().length == 1 ? '0${date.minute}' : date.minute.toString()}";
  }
}

final addresss =  TextEditingController();
TextField(
                        autofocus: false,
                        focusNode: FocusNode(),
                        controller: addresss,

                        decoration: InputDecoration(
                        //  prefixIcon: Icon(Icons.search, color: Colors.black,),
                            hintText: 'Your Address',
                            border: OutlineInputBorder()),
                        onTap: () async {
                          print("Search Result");
final sessionToken = Uuid().v4();
final Suggestion result = await showSearch(
  context: context,
  delegate: AddressSearch(sessionToken));
if(result != null){
  setState(() {
   addresss.text = result.description;

  });
} else {
  setState(() {
    addresss.text = SharedPref.location;
  });
}

                        },
                      ),

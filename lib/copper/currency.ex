defmodule Copper.Currency do
  @moduledoc """
  Provides support to ISO4217 currencies to Copper.

  Given a currency 3-letter code such as "USD" or "BRL", accessor methods can be used
  to get information for a currency such as name and exponent.
  """

  @currencies %{
    AED: %{currency_name: "United Arab Emirates dirham", numeric_code: 784, exponent: 2},
    AFN: %{currency_name: "Afghan afghani", numeric_code: 971, exponent: 2},
    ALL: %{currency_name: "Albanian lek", numeric_code: 008, exponent: 2},
    AMD: %{currency_name: "Armenian dram", numeric_code: 051, exponent: 2},
    ANG: %{currency_name: "Netherlands Antillean guilder", numeric_code: 532, exponent: 2},
    AOA: %{currency_name: "Angolan kwanza", numeric_code: 973, exponent: 2},
    ARS: %{currency_name: "Argentine peso", numeric_code: 032, exponent: 2},
    AUD: %{currency_name: "Australian dollar", numeric_code: 036, exponent: 2},
    AWG: %{currency_name: "Aruban florin", numeric_code: 533, exponent: 2},
    AZN: %{currency_name: "Azerbaijani manat", numeric_code: 944, exponent: 2},
    BAM: %{currency_name: "Bosnia and Herzegovina convertible mark", numeric_code: 977, exponent: 2},
    BBD: %{currency_name: "Barbados dollar", numeric_code: 052, exponent: 2},
    BDT: %{currency_name: "Bangladeshi taka", numeric_code: 050, exponent: 2},
    BGN: %{currency_name: "Bulgarian lev", numeric_code: 975, exponent: 2},
    BHD: %{currency_name: "Bahraini dinar", numeric_code: 048, exponent: 3},
    BIF: %{currency_name: "Burundian franc", numeric_code: 108, exponent: 0},
    BMD: %{currency_name: "Bermudian dollar", numeric_code: 060, exponent: 2},
    BND: %{currency_name: "Brunei dollar", numeric_code: 096, exponent: 2},
    BOB: %{currency_name: "Boliviano", numeric_code: 068, exponent: 2},
    BOV: %{currency_name: "Bolivian Mvdol", numeric_code: 984, exponent: 2},
    BRL: %{currency_name: "Brazilian real", numeric_code: 986, exponent: 2},
    BSD: %{currency_name: "Bahamian dollar", numeric_code: 044, exponent: 2},
    BTN: %{currency_name: "Bhutanese ngultrum", numeric_code: 064, exponent: 2},
    BWP: %{currency_name: "Botswana pula", numeric_code: 072, exponent: 2},
    BYN: %{currency_name: "Belarusian ruble", numeric_code: 933, exponent: 2},
    BZD: %{currency_name: "Belize dollar", numeric_code: 084, exponent: 2},
    CAD: %{currency_name: "Canadian dollar", numeric_code: 124, exponent: 2},
    CDF: %{currency_name: "Congolese franc", numeric_code: 976, exponent: 2},
    CHE: %{currency_name: "WIR Euro ", numeric_code: 947, exponent: 2},
    CHF: %{currency_name: "Swiss franc", numeric_code: 756, exponent: 2},
    CHW: %{currency_name: "WIR Franc", numeric_code: 948, exponent: 2},
    CLF: %{currency_name: "Unidad de Fomento", numeric_code: 990, exponent: 4},
    CLP: %{currency_name: "Chilean peso", numeric_code: 152, exponent: 0},
    CNY: %{currency_name: "Renminbi", numeric_code: 156, exponent: 2},
    COP: %{currency_name: "Colombian peso", numeric_code: 170, exponent: 2},
    COU: %{currency_name: "Unidad de Valor Real (UVR)", numeric_code: 970, exponent: 2},
    CRC: %{currency_name: "Costa Rican colon", numeric_code: 188, exponent: 2},
    CUC: %{currency_name: "Cuban convertible peso", numeric_code: 931, exponent: 2},
    CUP: %{currency_name: "Cuban peso", numeric_code: 192, exponent: 2},
    CVE: %{currency_name: "Cape Verdean escudo", numeric_code: 132, exponent: 2},
    CZK: %{currency_name: "Czech koruna", numeric_code: 203, exponent: 2},
    DJF: %{currency_name: "Djiboutian franc", numeric_code: 262, exponent: 0},
    DKK: %{currency_name: "Danish krone", numeric_code: 208, exponent: 2},
    DOP: %{currency_name: "Dominican peso", numeric_code: 214, exponent: 2},
    DZD: %{currency_name: "Algerian dinar", numeric_code: 012, exponent: 2},
    EGP: %{currency_name: "Egyptian pound", numeric_code: 818, exponent: 2},
    ERN: %{currency_name: "Eritrean nakfa", numeric_code: 232, exponent: 2},
    ETB: %{currency_name: "Ethiopian birr", numeric_code: 230, exponent: 2},
    EUR: %{currency_name: "Euro", numeric_code: 978, exponent: 2},
    FJD: %{currency_name: "Fiji dollar", numeric_code: 242, exponent: 2},
    FKP: %{currency_name: "Falkland Islands pound", numeric_code: 238, exponent: 2},
    GBP: %{currency_name: "Pound sterling", numeric_code: 826, exponent: 2},
    GEL: %{currency_name: "Georgian lari", numeric_code: 981, exponent: 2},
    GHS: %{currency_name: "Ghanaian cedi", numeric_code: 936, exponent: 2},
    GIP: %{currency_name: "Gibraltar pound", numeric_code: 292, exponent: 2},
    GMD: %{currency_name: "Gambian dalasi", numeric_code: 270, exponent: 2},
    GNF: %{currency_name: "Guinean franc", numeric_code: 324, exponent: 0},
    GTQ: %{currency_name: "Guatemalan quetzal", numeric_code: 320, exponent: 2},
    GYD: %{currency_name: "Guyanese dollar", numeric_code: 328, exponent: 2},
    HKD: %{currency_name: "Hong Kong dollar", numeric_code: 344, exponent: 2},
    HNL: %{currency_name: "Honduran lempira", numeric_code: 340, exponent: 2},
    HRK: %{currency_name: "Croatian kuna", numeric_code: 191, exponent: 2},
    HTG: %{currency_name: "Haitian gourde", numeric_code: 332, exponent: 2},
    HUF: %{currency_name: "Hungarian forint", numeric_code: 348, exponent: 2},
    IDR: %{currency_name: "Indonesian rupiah", numeric_code: 360, exponent: 2},
    ILS: %{currency_name: "Israeli new shekel", numeric_code: 376, exponent: 2},
    INR: %{currency_name: "Indian rupee", numeric_code: 356, exponent: 2},
    IQD: %{currency_name: "Iraqi dinar", numeric_code: 368, exponent: 3},
    IRR: %{currency_name: "Iranian rial", numeric_code: 364, exponent: 2},
    ISK: %{currency_name: "Icelandic króna", numeric_code: 352, exponent: 0},
    JMD: %{currency_name: "Jamaican dollar", numeric_code: 388, exponent: 2},
    JOD: %{currency_name: "Jordanian dinar", numeric_code: 400, exponent: 3},
    JPY: %{currency_name: "Japanese yen", numeric_code: 392, exponent: 0},
    KES: %{currency_name: "Kenyan shilling", numeric_code: 404, exponent: 2},
    KGS: %{currency_name: "Kyrgyzstani som", numeric_code: 417, exponent: 2},
    KHR: %{currency_name: "Cambodian riel", numeric_code: 116, exponent: 2},
    KMF: %{currency_name: "Comoro franc", numeric_code: 174, exponent: 0},
    KPW: %{currency_name: "North Korean won", numeric_code: 408, exponent: 2},
    KRW: %{currency_name: "South Korean won", numeric_code: 410, exponent: 0},
    KWD: %{currency_name: "Kuwaiti dinar", numeric_code: 414, exponent: 3},
    KYD: %{currency_name: "Cayman Islands dollar", numeric_code: 136, exponent: 2},
    KZT: %{currency_name: "Kazakhstani tenge", numeric_code: 398, exponent: 2},
    LAK: %{currency_name: "Lao kip", numeric_code: 418, exponent: 2},
    LBP: %{currency_name: "Lebanese pound", numeric_code: 422, exponent: 2},
    LKR: %{currency_name: "Sri Lankan rupee", numeric_code: 144, exponent: 2},
    LRD: %{currency_name: "Liberian dollar", numeric_code: 430, exponent: 2},
    LSL: %{currency_name: "Lesotho loti", numeric_code: 426, exponent: 2},
    LYD: %{currency_name: "Libyan dinar", numeric_code: 434, exponent: 3},
    MAD: %{currency_name: "Moroccan dirham", numeric_code: 504, exponent: 2},
    MDL: %{currency_name: "Moldovan leu", numeric_code: 498, exponent: 2},
    MGA: %{currency_name: "Malagasy ariary", numeric_code: 969, exponent: 2},
    MKD: %{currency_name: "Macedonian denar", numeric_code: 807, exponent: 2},
    MMK: %{currency_name: "Myanmar kyat", numeric_code: 104, exponent: 2},
    MNT: %{currency_name: "Mongolian tögrög", numeric_code: 496, exponent: 2},
    MOP: %{currency_name: "Macanese pataca", numeric_code: 446, exponent: 2},
    MRU: %{currency_name: "Mauritanian ouguiya", numeric_code: 929, exponent: 2},
    MUR: %{currency_name: "Mauritian rupee", numeric_code: 480, exponent: 2},
    MVR: %{currency_name: "Maldivian rufiyaa", numeric_code: 462, exponent: 2},
    MWK: %{currency_name: "Malawian kwacha", numeric_code: 454, exponent: 2},
    MXN: %{currency_name: "Mexican peso", numeric_code: 484, exponent: 2},
    MXV: %{currency_name: "Mexican Unidad de Inversion (UDI)", numeric_code: 979, exponent: 2},
    MYR: %{currency_name: "Malaysian ringgit", numeric_code: 458, exponent: 2},
    MZN: %{currency_name: "Mozambican metical", numeric_code: 943, exponent: 2},
    NAD: %{currency_name: "Namibian dollar", numeric_code: 516, exponent: 2},
    NGN: %{currency_name: "Nigerian naira", numeric_code: 566, exponent: 2},
    NIO: %{currency_name: "Nicaraguan córdoba", numeric_code: 558, exponent: 2},
    NOK: %{currency_name: "Norwegian krone", numeric_code: 578, exponent: 2},
    NPR: %{currency_name: "Nepalese rupee", numeric_code: 524, exponent: 2},
    NZD: %{currency_name: "New Zealand dollar", numeric_code: 554, exponent: 2},
    OMR: %{currency_name: "Omani rial", numeric_code: 512, exponent: 3},
    PAB: %{currency_name: "Panamanian balboa", numeric_code: 590, exponent: 2},
    PEN: %{currency_name: "Peruvian sol", numeric_code: 604, exponent: 2},
    PGK: %{currency_name: "Papua New Guinean kina", numeric_code: 598, exponent: 2},
    PHP: %{currency_name: "Philippine peso", numeric_code: 608, exponent: 2},
    PKR: %{currency_name: "Pakistani rupee", numeric_code: 586, exponent: 2},
    PLN: %{currency_name: "Polish złoty", numeric_code: 985, exponent: 2},
    PYG: %{currency_name: "Paraguayan guaraní", numeric_code: 600, exponent: 0},
    QAR: %{currency_name: "Qatari riyal", numeric_code: 634, exponent: 2},
    RON: %{currency_name: "Romanian leu", numeric_code: 946, exponent: 2},
    RSD: %{currency_name: "Serbian dinar", numeric_code: 941, exponent: 2},
    RUB: %{currency_name: "Russian ruble", numeric_code: 643, exponent: 2},
    RWF: %{currency_name: "Rwandan franc", numeric_code: 646, exponent: 0},
    SAR: %{currency_name: "Saudi riyal", numeric_code: 682, exponent: 2},
    SBD: %{currency_name: "Solomon Islands dollar", numeric_code: 090, exponent: 2},
    SCR: %{currency_name: "Seychelles rupee", numeric_code: 690, exponent: 2},
    SDG: %{currency_name: "Sudanese pound", numeric_code: 938, exponent: 2},
    SEK: %{currency_name: "Swedish krona", numeric_code: 752, exponent: 2},
    SGD: %{currency_name: "Singapore dollar", numeric_code: 702, exponent: 2},
    SHP: %{currency_name: "Saint Helena pound", numeric_code: 654, exponent: 2},
    SLL: %{currency_name: "Sierra Leonean leone", numeric_code: 694, exponent: 2},
    SOS: %{currency_name: "Somali shilling", numeric_code: 706, exponent: 2},
    SRD: %{currency_name: "Surinamese dollar", numeric_code: 968, exponent: 2},
    SSP: %{currency_name: "South Sudanese pound", numeric_code: 728, exponent: 2},
    STN: %{currency_name: "São Tomé and Príncipe dobra", numeric_code: 930, exponent: 2},
    SVC: %{currency_name: "Salvadoran colón", numeric_code: 222, exponent: 2},
    SYP: %{currency_name: "Syrian pound", numeric_code: 760, exponent: 2},
    SZL: %{currency_name: "Swazi lilangeni", numeric_code: 748, exponent: 2},
    THB: %{currency_name: "Thai baht", numeric_code: 764, exponent: 2},
    TJS: %{currency_name: "Tajikistani somoni", numeric_code: 972, exponent: 2},
    TMT: %{currency_name: "Turkmenistan manat", numeric_code: 934, exponent: 2},
    TND: %{currency_name: "Tunisian dinar", numeric_code: 788, exponent: 3},
    TOP: %{currency_name: "Tongan paʻanga", numeric_code: 776, exponent: 2},
    TRY: %{currency_name: "Turkish lira", numeric_code: 949, exponent: 2},
    TTD: %{currency_name: "Trinidad and Tobago dollar", numeric_code: 780, exponent: 2},
    TWD: %{currency_name: "New Taiwan dollar", numeric_code: 901, exponent: 2},
    TZS: %{currency_name: "Tanzanian shilling", numeric_code: 834, exponent: 2},
    UAH: %{currency_name: "Ukrainian hryvnia", numeric_code: 980, exponent: 2},
    UGX: %{currency_name: "Ugandan shilling", numeric_code: 800, exponent: 0},
    USD: %{currency_name: "United States dollar", numeric_code: 840, exponent: 2},
    USN: %{currency_name: "United States dollar (next day)", numeric_code: 997, exponent: 2},
    UYI: %{currency_name: "Uruguay Peso en Unidades Indexadas (URUIURUI)", numeric_code: 940, exponent: 0},
    UYU: %{currency_name: "Uruguayan peso", numeric_code: 858, exponent: 2},
    UYW: %{currency_name: "Unidad previsional", numeric_code: 927, exponent: 4},
    UZS: %{currency_name: "Uzbekistan som", numeric_code: 860, exponent: 2},
    VES: %{currency_name: "Venezuelan bolívar", numeric_code: 928, exponent: 2},
    VND: %{currency_name: "Vietnamese đồng", numeric_code: 704, exponent: 0},
    VUV: %{currency_name: "Vanuatu vatu", numeric_code: 548, exponent: 0},
    WST: %{currency_name: "Samoan tala", numeric_code: 882, exponent: 2},
    XAF: %{currency_name: "CFA franc BEAC", numeric_code: 950, exponent: 0},
    XAG: %{currency_name: "Silver", numeric_code: 961, exponent: 0},
    XAU: %{currency_name: "Gold", numeric_code: 959, exponent: 0},
    XBA: %{currency_name: "European Composite Unit (EURCO)", numeric_code: 955, exponent: 0},
    XBB: %{currency_name: "European Monetary Unit (E.M.U.-6)", numeric_code: 956, exponent: 0},
    XBC: %{currency_name: "European Unit of Account 9 (E.U.A.-9)", numeric_code: 957, exponent: 0},
    XBD: %{currency_name: "European Unit of Account 17 (E.U.A.-17)", numeric_code: 958, exponent: 0},
    XCD: %{currency_name: "East Caribbean dollar", numeric_code: 951, exponent: 2},
    XDR: %{currency_name: "Special drawing rights", numeric_code: 960, exponent: 0},
    XOF: %{currency_name: "CFA franc BCEAO", numeric_code: 952, exponent: 0},
    XPD: %{currency_name: "Palladium", numeric_code: 964, exponent: 0},
    XPF: %{currency_name: "CFP franc", numeric_code: 953, exponent: 0},
    XPT: %{currency_name: "Platinum", numeric_code: 962, exponent: 0},
    XSU: %{currency_name: "SUCRE", numeric_code: 994, exponent: 0},
    XTS: %{currency_name: "Code reserved for testing", numeric_code: 963, exponent: 0},
    XUA: %{currency_name: "ADB Unit of Account", numeric_code: 965, exponent: 0},
    XXX: %{currency_name: "No currency", numeric_code: 999, exponent: 0},
    YER: %{currency_name: "Yemeni rial", numeric_code: 886, exponent: 2},
    ZAR: %{currency_name: "South African rand", numeric_code: 710, exponent: 2},
    ZMW: %{currency_name: "Zambian kwacha", numeric_code: 967, exponent: 2},
    ZWL: %{currency_name: "Zimbabwean dollar", numeric_code: 932, exponent: 2}
  }

  @doc """
  Returns a map of maps with all currencies described in ISO 4217.
  The 3-letter code of a currency is the key mapping to another map,
  containing information such as currency name and exponent.

  ## Examples
      iex> Copper.Currency.all_currencies
      %{
        PHP: %{currency_name: "Philippine peso", exponent: 2, numeric_code: 608},
        PAB: %{currency_name: "Panamanian balboa", exponent: 2, numeric_code: 590},
        BZD: %{currency_name: "Belize dollar", exponent: 2, numeric_code: 84},
      ...
      }
  """
  @spec all_currencies :: map
  def all_currencies do
    @currencies
  end

  @doc """
  Return true or false if the given currency is described in ISO 4217 or not.

  ## Examples
      iex> Copper.Currency.exist?(:BRL)
      true

      iex> Copper.Currency.exist?(:AAA)
      false
  """
  @spec exist?(atom | binary) :: boolean
  def exist?(currency) do
    Map.has_key?(all_currencies(), to_atom(currency))
  end

  @doc """
  Given a 3-letter code of a currency, returns all the information available about it in a map,
  including name, numeric code and exponent.

  ## Examples
      iex> Copper.Currency.get_currency(:USD)
      %{currency_name: "United States dollar", exponent: 2, numeric_code: 840}

      iex> Copper.Currency.get_currency(:JPY)
      %{currency_name: "Japanese yen", exponent: 0, numeric_code: 392}
  """
  @spec get_currency(atom | binary) :: map
  def get_currency(currency) do
    Map.get(all_currencies(), to_atom(currency))
  end

  @doc """
  Given a 3-letter code, returns the full name of this currency.

  ## Examples
      iex> Copper.Currency.currency_name(:BRL)
      "Brazilian real"
  """
  @spec currency_name(atom | binary) :: binary
  def currency_name(currency) do
    get_currency(currency)[:currency_name]
  end

  @doc """
  Given a 3-letter code, returns the numeric code of this currency.

  ## Examples
      iex> Copper.Currency.numeric_code(:USD)
      840
  """
  @spec numeric_code(atom | binary) :: non_neg_integer
  def numeric_code(currency) do
    get_currency(currency)[:numeric_code]
  end

  @doc """
  Given a 3-letter code, returns the exponent of this currency.

  ## Examples
      iex> Copper.Currency.exponent(:USD)
      2
  """
  @spec exponent(atom | binary) :: non_neg_integer
  def exponent(currency) do
    get_currency(currency)[:exponent]
  end

  @doc """
  Given a string, transform it into a atom for use in this module.
  For example, the map returned in all_currencies has atoms as keys.

  ## Examples
      iex> Copper.Currency.to_atom("BRL")
      :BRL
  """
  @spec to_atom(atom | binary) :: atom
  def to_atom(currency) when is_atom(currency), do: currency

  def to_atom(currency) do
    currency |> String.upcase() |> String.to_atom()
  end
end

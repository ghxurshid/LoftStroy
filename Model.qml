import QtQuick 2.0

ListModel {
    id: model
    ListElement {
        modelData: "Выберите подъезд"
        floorData: []
    }
    ListElement {
        modelData: "Подъезд 1"
        floorData: [
            ListElement {
                modelData: "Выберите этаж"
                flatData: []
                command: ""
            },
            ListElement {
                modelData: "Этаж 3"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 1"; image: "img/apartment_1.jpg"; command: "131" },
                    ListElement { modelData: "Квартира 2"; image: "img/apartment_2.jpg"; command: "132" },
                    ListElement { modelData: "Квартира 3"; image: "img/apartment_3.jpg"; command: "133" },
                    ListElement { modelData: "Квартира 4"; image: "img/apartment_4.jpg"; command: "134" },
                    ListElement { modelData: "Квартира 5"; image: "img/apartment_5.jpg"; command: "135" },
                    ListElement { modelData: "Квартира 6"; image: "img/apartment_6.jpg"; command: "136" },
                    ListElement { modelData: "Квартира 7"; image: "img/apartment_7.jpg"; command: "137" }
                ]
                command: "13"
            },
            ListElement {
                modelData: "Этаж 4"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 8"; image: "img/apartment_1.jpg"; command: "141" },
                    ListElement { modelData: "Квартира 9"; image: "img/apartment_2.jpg"; command: "142" },
                    ListElement { modelData: "Квартира 10"; image: "img/apartment_3.jpg"; command: "143" },
                    ListElement { modelData: "Квартира 11"; image: "img/apartment_4.jpg"; command: "144" },
                    ListElement { modelData: "Квартира 12"; image: "img/apartment_5.jpg"; command: "145" },
                    ListElement { modelData: "Квартира 13"; image: "img/apartment_6.jpg"; command: "146" },
                    ListElement { modelData: "Квартира 14"; image: "img/apartment_7.jpg"; command: "147" }
                ]
                command: "14"
            },
            ListElement {
                modelData: "Этаж 5"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 15"; image: "img/apartment_1.jpg"; command: "151" },
                    ListElement { modelData: "Квартира 16"; image: "img/apartment_2.jpg"; command: "152" },
                    ListElement { modelData: "Квартира 17"; image: "img/apartment_3.jpg"; command: "153" },
                    ListElement { modelData: "Квартира 18"; image: "img/apartment_4.jpg"; command: "154" },
                    ListElement { modelData: "Квартира 19"; image: "img/apartment_5.jpg"; command: "155" },
                    ListElement { modelData: "Квартира 20"; image: "img/apartment_6.jpg"; command: "156" },
                    ListElement { modelData: "Квартира 21"; image: "img/apartment_7.jpg"; command: "157" }
                ]
                command: "15"
            },
            ListElement {
                modelData: "Этаж 6"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 22"; image: "img/apartment_1.jpg"; command: "161" },
                    ListElement { modelData: "Квартира 23"; image: "img/apartment_2.jpg"; command: "162" },
                    ListElement { modelData: "Квартира 24"; image: "img/apartment_3.jpg"; command: "163" },
                    ListElement { modelData: "Квартира 25"; image: "img/apartment_4.jpg"; command: "164" },
                    ListElement { modelData: "Квартира 26"; image: "img/apartment_5.jpg"; command: "165" },
                    ListElement { modelData: "Квартира 27"; image: "img/apartment_6.jpg"; command: "166" },
                    ListElement { modelData: "Квартира 28"; image: "img/apartment_7.jpg"; command: "167" }
                ]
                command: "16"
            },
            ListElement {
                modelData: "Этаж 7"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 29"; image: "img/apartment_1.jpg"; command: "171" },
                    ListElement { modelData: "Квартира 30"; image: "img/apartment_2.jpg"; command: "172" },
                    ListElement { modelData: "Квартира 31"; image: "img/apartment_3.jpg"; command: "173" },
                    ListElement { modelData: "Квартира 32"; image: "img/apartment_4.jpg"; command: "174" },
                    ListElement { modelData: "Квартира 33"; image: "img/apartment_5.jpg"; command: "175" },
                    ListElement { modelData: "Квартира 34"; image: "img/apartment_6.jpg"; command: "176" },
                    ListElement { modelData: "Квартира 35"; image: "img/apartment_7.jpg"; command: "177" }
                ]
                command: "17"
            },
            ListElement {
                modelData: "Этаж 8"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 36"; image: "img/apartment_1.jpg"; command: "181" },
                    ListElement { modelData: "Квартира 37"; image: "img/apartment_2.jpg"; command: "182" },
                    ListElement { modelData: "Квартира 38"; image: "img/apartment_3.jpg"; command: "183" },
                    ListElement { modelData: "Квартира 39"; image: "img/apartment_4.jpg"; command: "184" },
                    ListElement { modelData: "Квартира 40"; image: "img/apartment_5.jpg"; command: "185" },
                    ListElement { modelData: "Квартира 41"; image: "img/apartment_6.jpg"; command: "186" },
                    ListElement { modelData: "Квартира 42"; image: "img/apartment_7.jpg"; command: "187" }
                ]
                command: "18"
            },
            ListElement {
                modelData: "Этаж 9"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 43"; image: "img/apartment_1.jpg"; command: "191" },
                    ListElement { modelData: "Квартира 44"; image: "img/apartment_2.jpg"; command: "192" },
                    ListElement { modelData: "Квартира 45"; image: "img/apartment_3.jpg"; command: "193" },
                    ListElement { modelData: "Квартира 46"; image: "img/apartment_4.jpg"; command: "194" },
                    ListElement { modelData: "Квартира 47"; image: "img/apartment_5.jpg"; command: "195" },
                    ListElement { modelData: "Квартира 48"; image: "img/apartment_6.jpg"; command: "196" },
                    ListElement { modelData: "Квартира 49"; image: "img/apartment_7.jpg"; command: "197" }
                ]
                command: "19"
            },
            ListElement {
                modelData: "Этаж 10"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 50"; image: "img/apartment_1.jpg"; command: "1101" },
                    ListElement { modelData: "Квартира 51"; image: "img/apartment_2.jpg"; command: "1102" },
                    ListElement { modelData: "Квартира 52"; image: "img/apartment_3.jpg"; command: "1103" },
                    ListElement { modelData: "Квартира 53"; image: "img/apartment_4.jpg"; command: "1104" },
                    ListElement { modelData: "Квартира 54"; image: "img/apartment_5.jpg"; command: "1105" },
                    ListElement { modelData: "Квартира 55"; image: "img/apartment_6.jpg"; command: "1106" },
                    ListElement { modelData: "Квартира 56"; image: "img/apartment_7.jpg"; command: "1107" }
                ]
                command: "110"
            },
            ListElement {
                modelData: "Этаж 11"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 57"; image: "img/apartment_1.jpg"; command: "1111" },
                    ListElement { modelData: "Квартира 58"; image: "img/apartment_2.jpg"; command: "1112" },
                    ListElement { modelData: "Квартира 59"; image: "img/apartment_3.jpg"; command: "1113" },
                    ListElement { modelData: "Квартира 60"; image: "img/apartment_4.jpg"; command: "1114" },
                    ListElement { modelData: "Квартира 61"; image: "img/apartment_5.jpg"; command: "1115" },
                    ListElement { modelData: "Квартира 62"; image: "img/apartment_6.jpg"; command: "1116" },
                    ListElement { modelData: "Квартира 63"; image: "img/apartment_7.jpg"; command: "1117" }
                ]
                command: "111"
            },
            ListElement {
                modelData: "Этаж 12"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 64"; image: "img/apartment_1.jpg"; command: "1121" },
                    ListElement { modelData: "Квартира 65"; image: "img/apartment_2.jpg"; command: "1122" },
                    ListElement { modelData: "Квартира 66"; image: "img/apartment_3.jpg"; command: "1123" },
                    ListElement { modelData: "Квартира 67"; image: "img/apartment_4.jpg"; command: "1124" },
                    ListElement { modelData: "Квартира 68"; image: "img/apartment_5.jpg"; command: "1125" },
                    ListElement { modelData: "Квартира 69"; image: "img/apartment_6.jpg"; command: "1126" },
                    ListElement { modelData: "Квартира 70"; image: "img/apartment_7.jpg"; command: "1127" }
                ]
                command: "112"
            },
            ListElement {
                modelData: "Этаж 13"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 71"; image: "img/apartment_1.jpg"; command: "1131" },
                    ListElement { modelData: "Квартира 72"; image: "img/apartment_2.jpg"; command: "1132" },
                    ListElement { modelData: "Квартира 73"; image: "img/apartment_3.jpg"; command: "1133" },
                    ListElement { modelData: "Квартира 74"; image: "img/apartment_4.jpg"; command: "1134" },
                    ListElement { modelData: "Квартира 75"; image: "img/apartment_5.jpg"; command: "1135" },
                    ListElement { modelData: "Квартира 76"; image: "img/apartment_6.jpg"; command: "1136" },
                    ListElement { modelData: "Квартира 77"; image: "img/apartment_7.jpg"; command: "1137" }
                ]
                command: "113"
            },
            ListElement {
                modelData: "Этаж 14"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 78"; image: "img/apartment_1.jpg"; command: "1141" },
                    ListElement { modelData: "Квартира 79"; image: "img/apartment_2.jpg"; command: "1142" },
                    ListElement { modelData: "Квартира 80"; image: "img/apartment_3.jpg"; command: "1143" },
                    ListElement { modelData: "Квартира 81"; image: "img/apartment_4.jpg"; command: "1144" },
                    ListElement { modelData: "Квартира 82"; image: "img/apartment_5.jpg"; command: "1145" },
                    ListElement { modelData: "Квартира 83"; image: "img/apartment_6.jpg"; command: "1146" },
                    ListElement { modelData: "Квартира 84"; image: "img/apartment_7.jpg"; command: "1147" }
                ]
                command: "114"
            },
            ListElement {
                modelData: "Этаж 15"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 85"; image: "img/apartment_1.jpg"; command: "1151" },
                    ListElement { modelData: "Квартира 86"; image: "img/apartment_2.jpg"; command: "1152" },
                    ListElement { modelData: "Квартира 87"; image: "img/apartment_3.jpg"; command: "1153" },
                    ListElement { modelData: "Квартира 88"; image: "img/apartment_4.jpg"; command: "1154" },
                    ListElement { modelData: "Квартира 89"; image: "img/apartment_5.jpg"; command: "1155" },
                    ListElement { modelData: "Квартира 90"; image: "img/apartment_6.jpg"; command: "1156" },
                    ListElement { modelData: "Квартира 91"; image: "img/apartment_7.jpg"; command: "1157" }
                ]
                command: "115"
            },
            ListElement {
                modelData: "Этаж 16"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 184"; image: "img/apartment_15.jpg"; command: "1161" }
                ]
                command: "116"
            }
        ]
        command: "1"
    }
    ListElement {
        modelData: "Подъезд 2"
        floorData: [
            ListElement {
                modelData: "Выберите этаж"
                flatData: []
                command: ""
            },
            ListElement {
                modelData: "Этаж 3"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 92"; image: "img/apartment_8.jpg"; command: "231"},
                    ListElement { modelData: "Квартира 93"; image: "img/apartment_9.jpg"; command: "232" },
                    ListElement { modelData: "Квартира 94"; image: "img/apartment_10.jpg"; command: "233" },
                    ListElement { modelData: "Квартира 95"; image: "img/apartment_11.jpg"; command: "234" },
                    ListElement { modelData: "Квартира 96"; image: "img/apartment_12.jpg"; command: "235" },
                    ListElement { modelData: "Квартира 97"; image: "img/apartment_13.jpg"; command: "236" },
                    ListElement { modelData: "Квартира 98"; image: "img/apartment_14.jpg"; command: "237" }
                ]
                command: "23"
            },
            ListElement {
                modelData: "Этаж 4"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 99";  image: "img/apartment_8.jpg"; command: "241"  },
                    ListElement { modelData: "Квартира 100"; image: "img/apartment_9.jpg"; command: "242" },
                    ListElement { modelData: "Квартира 101"; image: "img/apartment_10.jpg"; command: "243" },
                    ListElement { modelData: "Квартира 102"; image: "img/apartment_11.jpg"; command: "244" },
                    ListElement { modelData: "Квартира 103"; image: "img/apartment_12.jpg"; command: "245" },
                    ListElement { modelData: "Квартира 104"; image: "img/apartment_13.jpg"; command: "246" },
                    ListElement { modelData: "Квартира 105"; image: "img/apartment_14.jpg"; command: "247" }
                ]
                command: "24"
            },
            ListElement {
                modelData: "Этаж 5"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 106"; image: "img/apartment_8.jpg"; command: "251" },
                    ListElement { modelData: "Квартира 107"; image: "img/apartment_9.jpg"; command: "252" },
                    ListElement { modelData: "Квартира 108"; image: "img/apartment_10.jpg"; command: "253" },
                    ListElement { modelData: "Квартира 109"; image: "img/apartment_11.jpg"; command: "254" },
                    ListElement { modelData: "Квартира 110"; image: "img/apartment_12.jpg"; command: "255" },
                    ListElement { modelData: "Квартира 111"; image: "img/apartment_13.jpg"; command: "256" },
                    ListElement { modelData: "Квартира 112"; image: "img/apartment_14.jpg"; command: "257" }
                ]
                command: "25"
            },
            ListElement {
                modelData: "Этаж 6"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 113"; image: "img/apartment_8.jpg"; command: "261" },
                    ListElement { modelData: "Квартира 114"; image: "img/apartment_9.jpg"; command: "262" },
                    ListElement { modelData: "Квартира 115"; image: "img/apartment_10.jpg"; command: "263" },
                    ListElement { modelData: "Квартира 116"; image: "img/apartment_11.jpg"; command: "264" },
                    ListElement { modelData: "Квартира 117"; image: "img/apartment_12.jpg"; command: "265" },
                    ListElement { modelData: "Квартира 118"; image: "img/apartment_13.jpg"; command: "266" },
                    ListElement { modelData: "Квартира 119"; image: "img/apartment_14.jpg"; command: "267" }
                ]
                command: "26"
            },
            ListElement {
                modelData: "Этаж 7"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 120"; image: "img/apartment_8.jpg"; command: "271" },
                    ListElement { modelData: "Квартира 121"; image: "img/apartment_9.jpg"; command: "272" },
                    ListElement { modelData: "Квартира 122"; image: "img/apartment_10.jpg"; command: "273" },
                    ListElement { modelData: "Квартира 123"; image: "img/apartment_11.jpg"; command: "274" },
                    ListElement { modelData: "Квартира 124"; image: "img/apartment_12.jpg"; command: "275" },
                    ListElement { modelData: "Квартира 125"; image: "img/apartment_13.jpg"; command: "276" },
                    ListElement { modelData: "Квартира 126"; image: "img/apartment_14.jpg"; command: "277" }
                ]
                command: "27"
            },
            ListElement {
                modelData: "Этаж 8"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 127"; image: "img/apartment_8.jpg"; command: "281" },
                    ListElement { modelData: "Квартира 128"; image: "img/apartment_9.jpg"; command: "282" },
                    ListElement { modelData: "Квартира 129"; image: "img/apartment_10.jpg"; command: "283" },
                    ListElement { modelData: "Квартира 130"; image: "img/apartment_11.jpg"; command: "284" },
                    ListElement { modelData: "Квартира 131"; image: "img/apartment_12.jpg"; command: "285" },
                    ListElement { modelData: "Квартира 132"; image: "img/apartment_13.jpg"; command: "286" },
                    ListElement { modelData: "Квартира 133"; image: "img/apartment_14.jpg"; command: "287" }
                ]
                command: "28"
            },
            ListElement {
                modelData: "Этаж 9"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 134"; image: "img/apartment_8.jpg"; command: "291" },
                    ListElement { modelData: "Квартира 135"; image: "img/apartment_9.jpg"; command: "292" },
                    ListElement { modelData: "Квартира 136"; image: "img/apartment_10.jpg"; command: "293" },
                    ListElement { modelData: "Квартира 137"; image: "img/apartment_14.jpg"; command: "294" },
                    ListElement { modelData: "Квартира 138"; image: "img/apartment_12.jpg"; command: "295" },
                    ListElement { modelData: "Квартира 139"; image: "img/apartment_13.jpg"; command: "296" },
                    ListElement { modelData: "Квартира 140"; image: "img/apartment_14.jpg"; command: "297" }
                ]
                command: "29"
            },
            ListElement {
                modelData: "Этаж 10"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 141"; image: "img/apartment_8.jpg"; command: "2101" },
                    ListElement { modelData: "Квартира 142"; image: "img/apartment_9.jpg"; command: "2102" },
                    ListElement { modelData: "Квартира 143"; image: "img/apartment_10.jpg"; command: "2103" },
                    ListElement { modelData: "Квартира 144"; image: "img/apartment_11.jpg"; command: "2104" },
                    ListElement { modelData: "Квартира 145"; image: "img/apartment_12.jpg"; command: "2105" },
                    ListElement { modelData: "Квартира 146"; image: "img/apartment_13.jpg"; command: "2106" },
                    ListElement { modelData: "Квартира 147"; image: "img/apartment_14.jpg"; command: "2107" }
                ]
                command: "210"
            },
            ListElement {
                modelData: "Этаж 11"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 148"; image: "img/apartment_8.jpg"; command: "2111" },
                    ListElement { modelData: "Квартира 149"; image: "img/apartment_9.jpg"; command: "2112" },
                    ListElement { modelData: "Квартира 150"; image: "img/apartment_10.jpg"; command: "2113" },
                    ListElement { modelData: "Квартира 151"; image: "img/apartment_11.jpg"; command: "2114" },
                    ListElement { modelData: "Квартира 152"; image: "img/apartment_12.jpg"; command: "2115" },
                    ListElement { modelData: "Квартира 153"; image: "img/apartment_13.jpg"; command: "2116" },
                    ListElement { modelData: "Квартира 154"; image: "img/apartment_14.jpg"; command: "2117" }
                ]
                command: "211"
            },
            ListElement {
                modelData: "Этаж 12"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 155"; image: "img/apartment_8.jpg"; command: "2121" },
                    ListElement { modelData: "Квартира 156"; image: "img/apartment_9.jpg"; command: "2122" },
                    ListElement { modelData: "Квартира 157"; image: "img/apartment_10.jpg"; command: "2123" },
                    ListElement { modelData: "Квартира 158"; image: "img/apartment_11.jpg"; command: "2124" },
                    ListElement { modelData: "Квартира 159"; image: "img/apartment_12.jpg"; command: "2125" },
                    ListElement { modelData: "Квартира 160"; image: "img/apartment_13.jpg"; command: "2126" },
                    ListElement { modelData: "Квартира 161"; image: "img/apartment_14.jpg"; command: "2127" }
                ]
                command: "212"
            },
            ListElement {
                modelData: "Этаж 13"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 162"; image: "img/apartment_8.jpg"; command: "2131" },
                    ListElement { modelData: "Квартира 163"; image: "img/apartment_9.jpg"; command: "2132" },
                    ListElement { modelData: "Квартира 164"; image: "img/apartment_10.jpg"; command: "2133" },
                    ListElement { modelData: "Квартира 165"; image: "img/apartment_11.jpg"; command: "2134" },
                    ListElement { modelData: "Квартира 166"; image: "img/apartment_12.jpg"; command: "2135" },
                    ListElement { modelData: "Квартира 167"; image: "img/apartment_13.jpg"; command: "2136" },
                    ListElement { modelData: "Квартира 168"; image: "img/apartment_14.jpg"; command: "2137" }
                ]
                command: "213"
            },
            ListElement {
                modelData: "Этаж 14"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 170"; image: "img/apartment_8.jpg"; command: "2141" },
                    ListElement { modelData: "Квартира 171"; image: "img/apartment_9.jpg"; command: "2142" },
                    ListElement { modelData: "Квартира 172"; image: "img/apartment_10.jpg"; command: "2143" },
                    ListElement { modelData: "Квартира 173"; image: "img/apartment_11.jpg"; command: "2144" },
                    ListElement { modelData: "Квартира 174"; image: "img/apartment_12.jpg"; command: "2145" },
                    ListElement { modelData: "Квартира 175"; image: "img/apartment_13.jpg"; command: "2146" },
                    ListElement { modelData: "Квартира 176"; image: "img/apartment_14.jpg"; command: "2147" }
                ]
                command: "214"
            },
            ListElement {
                modelData: "Этаж 15"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 177"; image: "img/apartment_8.jpg"; command: "2151" },
                    ListElement { modelData: "Квартира 178"; image: "img/apartment_9.jpg"; command: "2152" },
                    ListElement { modelData: "Квартира 179"; image: "img/apartment_10.jpg"; command: "2153" },
                    ListElement { modelData: "Квартира 180"; image: "img/apartment_11.jpg"; command: "2154" },
                    ListElement { modelData: "Квартира 181"; image: "img/apartment_12.jpg"; command: "2155" },
                    ListElement { modelData: "Квартира 182"; image: "img/apartment_13.jpg"; command: "2156" },
                    ListElement { modelData: "Квартира 183"; image: "img/apartment_14.jpg"; command: "2157" }
                ]
                command: "215"
            },
            ListElement {
                modelData: "Этаж 16"
                flatData: [
                    ListElement { modelData: "Выберите квартиру"; image: ""; command: "" },
                    ListElement { modelData: "Квартира 185"; image: "img/apartment_16.jpg"; command: "2161" }
                ]
                command: "216"
            }
        ]
        command: "2"
    }
}

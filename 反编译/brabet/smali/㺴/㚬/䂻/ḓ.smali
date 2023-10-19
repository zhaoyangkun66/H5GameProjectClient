.class public final L㺴/㚬/䂻/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/䂻/ᆻ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "L\u3eb4/\u36ac/\u40bb/\u0b89;",
            "II",
            "Ljava/util/Map<",
            "L\u3eb4/\u36ac/\u40bb/\u36ac;",
            "*>;)",
            "L\u3eb4/\u36ac/\u40bb/\u0cab/\u40bb;"
        }
    .end annotation

    sget-object v0, L㺴/㚬/䂻/ḓ$உ;->உ:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No encoder available for format "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, L㺴/㚬/䂻/ㄏ/உ;

    invoke-direct {v0}, L㺴/㚬/䂻/ㄏ/உ;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, L㺴/㚬/䂻/㧦/உ;

    invoke-direct {v0}, L㺴/㚬/䂻/㧦/உ;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, L㺴/㚬/䂻/㹖/䂻;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/䂻;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, L㺴/㚬/䂻/ἥ/உ;

    invoke-direct {v0}, L㺴/㚬/䂻/ἥ/உ;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, L㺴/㚬/䂻/㹖/㹖;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/㹖;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, L㺴/㚬/䂻/㹖/㺴;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/㺴;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, L㺴/㚬/䂻/㹖/ℓ;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/ℓ;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, L㺴/㚬/䂻/㹖/䆀;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/䆀;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, L㺴/㚬/䂻/ཇ/உ;

    invoke-direct {v0}, L㺴/㚬/䂻/ཇ/உ;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, L㺴/㚬/䂻/㹖/ᓭ;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/ᓭ;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, L㺴/㚬/䂻/㹖/ಫ;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/ಫ;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, L㺴/㚬/䂻/㹖/㭲;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/㭲;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, L㺴/㚬/䂻/㹖/㧦;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/㧦;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, L㺴/㚬/䂻/ᆻ;->உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

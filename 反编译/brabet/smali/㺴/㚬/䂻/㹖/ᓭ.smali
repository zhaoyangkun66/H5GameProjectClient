.class public final L㺴/㚬/䂻/㹖/ᓭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/䂻/ᆻ;


# instance fields
.field public final உ:L㺴/㚬/䂻/㹖/ಫ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㺴/㚬/䂻/㹖/ಫ;

    invoke-direct {v0}, L㺴/㚬/䂻/㹖/ಫ;-><init>()V

    iput-object v0, p0, L㺴/㚬/䂻/㹖/ᓭ;->உ:L㺴/㚬/䂻/㹖/ಫ;

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

    sget-object v0, L㺴/㚬/䂻/உ;->ბ:L㺴/㚬/䂻/உ;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, L㺴/㚬/䂻/㹖/ᓭ;->உ:L㺴/㚬/䂻/㹖/ಫ;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, L㺴/㚬/䂻/உ;->ㄏ:L㺴/㚬/䂻/உ;

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, L㺴/㚬/䂻/㹖/ಫ;->உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode UPC-A, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

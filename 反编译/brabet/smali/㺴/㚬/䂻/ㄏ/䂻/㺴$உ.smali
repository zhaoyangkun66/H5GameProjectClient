.class public L㺴/㚬/䂻/ㄏ/䂻/㺴$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/䂻/ㄏ/䂻/㺴;->உ()L㺴/㚬/䂻/ಫ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "L\u3eb4/\u36ac/\u40bb/\u310f/\u40bb/\u4180;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(L㺴/㚬/䂻/ㄏ/䂻/㺴;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    check-cast p2, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    invoke-virtual {p0, p1, p2}, L㺴/㚬/䂻/ㄏ/䂻/㺴$உ;->உ(L㺴/㚬/䂻/ㄏ/䂻/䆀;L㺴/㚬/䂻/ㄏ/䂻/䆀;)I

    move-result p1

    return p1
.end method

.method public உ(L㺴/㚬/䂻/ㄏ/䂻/䆀;L㺴/㚬/䂻/ㄏ/䂻/䆀;)I
    .locals 0

    invoke-virtual {p1}, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴()I

    move-result p1

    invoke-virtual {p2}, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

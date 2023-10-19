.class public L㺴/㚬/உ/䂻/ḙ/㺴$㚬;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ḙ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4;",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4$\u1e13;",
        ">;"
    }
.end annotation


# static fields
.field public static final உ:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4$\u1e13;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/ḙ/㺴$㚬;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ḙ/㺴$㚬;-><init>(Ljava/lang/String;)V

    sput-object v0, L㺴/㚬/உ/䂻/ḙ/㺴$㚬;->உ:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/ḙ/㺴;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ḙ/㺴$㚬;->உ(L㺴/㚬/உ/䂻/ḙ/㺴;)L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/ḙ/㺴;

    check-cast p2, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ḙ/㺴$㚬;->䂻(L㺴/㚬/உ/䂻/ḙ/㺴;L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V

    return-void
.end method

.method public உ(L㺴/㚬/உ/䂻/ḙ/㺴;)L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;
    .locals 0

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ḙ/㺴;->getRevealInfo()L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    move-result-object p1

    return-object p1
.end method

.method public 䂻(L㺴/㚬/உ/䂻/ḙ/㺴;L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V
    .locals 0

    invoke-interface {p1, p2}, L㺴/㚬/உ/䂻/ḙ/㺴;->setRevealInfo(L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V

    return-void
.end method

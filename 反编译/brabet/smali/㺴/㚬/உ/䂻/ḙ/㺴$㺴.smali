.class public L㺴/㚬/உ/䂻/ḙ/㺴$㺴;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ḙ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final உ:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/ḙ/㺴$㺴;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ḙ/㺴$㺴;-><init>(Ljava/lang/String;)V

    sput-object v0, L㺴/㚬/உ/䂻/ḙ/㺴$㺴;->உ:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/ḙ/㺴;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ḙ/㺴$㺴;->உ(L㺴/㚬/உ/䂻/ḙ/㺴;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/ḙ/㺴;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ḙ/㺴$㺴;->䂻(L㺴/㚬/உ/䂻/ḙ/㺴;Ljava/lang/Integer;)V

    return-void
.end method

.method public உ(L㺴/㚬/உ/䂻/ḙ/㺴;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ḙ/㺴;->getCircularRevealScrimColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public 䂻(L㺴/㚬/உ/䂻/ḙ/㺴;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, L㺴/㚬/உ/䂻/ḙ/㺴;->setCircularRevealScrimColor(I)V

    return-void
.end method

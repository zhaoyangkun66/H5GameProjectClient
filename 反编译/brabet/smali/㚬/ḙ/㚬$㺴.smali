.class public final L㚬/ḙ/㚬$㺴;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "L\u36ac/\u1e19/\u36ac$\u39e6;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, L㚬/ḙ/㚬$㧦;

    invoke-virtual {p0, p1}, L㚬/ḙ/㚬$㺴;->உ(L㚬/ḙ/㚬$㧦;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, L㚬/ḙ/㚬$㧦;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, L㚬/ḙ/㚬$㺴;->䂻(L㚬/ḙ/㚬$㧦;Landroid/graphics/PointF;)V

    return-void
.end method

.method public உ(L㚬/ḙ/㚬$㧦;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public 䂻(L㚬/ḙ/㚬$㧦;Landroid/graphics/PointF;)V
    .locals 0

    invoke-virtual {p1, p2}, L㚬/ḙ/㚬$㧦;->உ(Landroid/graphics/PointF;)V

    return-void
.end method

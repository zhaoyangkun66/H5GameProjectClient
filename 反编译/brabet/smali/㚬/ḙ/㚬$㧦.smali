.class public L㚬/ḙ/㚬$㧦;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u39e6"
.end annotation


# instance fields
.field public உ:I

.field public ᆻ:I

.field public ḓ:Landroid/view/View;

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ḙ/㚬$㧦;->ḓ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public உ(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, L㚬/ḙ/㚬$㧦;->㚬:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, L㚬/ḙ/㚬$㧦;->㺴:I

    iget p1, p0, L㚬/ḙ/㚬$㧦;->ᆻ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㚬/ḙ/㚬$㧦;->ᆻ:I

    iget v0, p0, L㚬/ḙ/㚬$㧦;->䆀:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, L㚬/ḙ/㚬$㧦;->䂻()V

    :cond_0
    return-void
.end method

.method public 㚬(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, L㚬/ḙ/㚬$㧦;->உ:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, L㚬/ḙ/㚬$㧦;->䂻:I

    iget p1, p0, L㚬/ḙ/㚬$㧦;->䆀:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㚬/ḙ/㚬$㧦;->䆀:I

    iget v0, p0, L㚬/ḙ/㚬$㧦;->ᆻ:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/ḙ/㚬$㧦;->䂻()V

    :cond_0
    return-void
.end method

.method public final 䂻()V
    .locals 5

    iget-object v0, p0, L㚬/ḙ/㚬$㧦;->ḓ:Landroid/view/View;

    iget v1, p0, L㚬/ḙ/㚬$㧦;->உ:I

    iget v2, p0, L㚬/ḙ/㚬$㧦;->䂻:I

    iget v3, p0, L㚬/ḙ/㚬$㧦;->㚬:I

    iget v4, p0, L㚬/ḙ/㚬$㧦;->㺴:I

    invoke-static {v0, v1, v2, v3, v4}, L㚬/ḙ/ڈ;->䆀(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    iput v0, p0, L㚬/ḙ/㚬$㧦;->䆀:I

    iput v0, p0, L㚬/ḙ/㚬$㧦;->ᆻ:I

    return-void
.end method

.class public L㚬/ℓ/㧦/㚬$உ$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㧦/㚬$உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroid/text/TextPaint;

.field public 㚬:I

.field public 㺴:I

.field public 䂻:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->உ:Landroid/text/TextPaint;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㚬:I

    iput v0, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㺴:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㺴:I

    iput v0, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㚬:I

    :goto_0
    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->䂻:Landroid/text/TextDirectionHeuristic;

    return-void
.end method


# virtual methods
.method public உ()L㚬/ℓ/㧦/㚬$உ;
    .locals 5

    new-instance v0, L㚬/ℓ/㧦/㚬$உ;

    iget-object v1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->உ:Landroid/text/TextPaint;

    iget-object v2, p0, L㚬/ℓ/㧦/㚬$உ$உ;->䂻:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㚬:I

    iget v4, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㺴:I

    invoke-direct {v0, v1, v2, v3, v4}, L㚬/ℓ/㧦/㚬$உ;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public 㚬(I)L㚬/ℓ/㧦/㚬$உ$உ;
    .locals 0

    iput p1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㺴:I

    return-object p0
.end method

.method public 㺴(Landroid/text/TextDirectionHeuristic;)L㚬/ℓ/㧦/㚬$உ$உ;
    .locals 0

    iput-object p1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->䂻:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public 䂻(I)L㚬/ℓ/㧦/㚬$உ$உ;
    .locals 0

    iput p1, p0, L㚬/ℓ/㧦/㚬$உ$உ;->㚬:I

    return-object p0
.end method

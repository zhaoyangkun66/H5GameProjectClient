.class public L㚬/䂻/ბ/㭲;
.super Landroid/widget/RatingBar;
.source ""


# instance fields
.field public final 䂻:L㚬/䂻/ბ/㲝;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㚬/䂻/உ;->㨃:I

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/㭲;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/㲝;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㲝;-><init>(Landroid/widget/ProgressBar;)V

    iput-object p1, p0, L㚬/䂻/ბ/㭲;->䂻:L㚬/䂻/ბ/㲝;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/㲝;->㚬(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object p2, p0, L㚬/䂻/ბ/㭲;->䂻:L㚬/䂻/ბ/㲝;

    invoke-virtual {p2}, L㚬/䂻/ბ/㲝;->䂻()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    mul-int p2, p2, v0

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

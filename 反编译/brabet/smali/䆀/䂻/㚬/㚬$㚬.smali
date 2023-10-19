.class public L䆀/䂻/㚬/㚬$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L䆀/䂻/㚬/㚬;->ℓ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, L䆀/䂻/㚬/㚬;->㺴()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, L䆀/䂻/㚬/㚬;->ḓ()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, L䆀/䂻/㚬/㚬;->䆀()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    invoke-static {}, L䆀/䂻/㚬/㚬;->䆀()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    return-void
.end method

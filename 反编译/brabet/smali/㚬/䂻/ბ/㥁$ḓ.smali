.class public L㚬/䂻/ბ/㥁$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㥁;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1e13"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/㥁;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㥁;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    iget-object v1, v1, L㚬/䂻/ბ/㥁;->㨃:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    iget-object v1, v1, L㚬/䂻/ბ/㥁;->㨃:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    iget-object v0, v0, L㚬/䂻/ბ/㥁;->㨃:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    iget-object p2, p1, L㚬/䂻/ბ/㥁;->ᾦ:Landroid/os/Handler;

    iget-object p1, p1, L㚬/䂻/ბ/㥁;->㲧:L㚬/䂻/ბ/㥁$䆀;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, L㚬/䂻/ბ/㥁$ḓ;->䂻:L㚬/䂻/ბ/㥁;

    iget-object p2, p1, L㚬/䂻/ბ/㥁;->ᾦ:Landroid/os/Handler;

    iget-object p1, p1, L㚬/䂻/ბ/㥁;->㲧:L㚬/䂻/ბ/㥁$䆀;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

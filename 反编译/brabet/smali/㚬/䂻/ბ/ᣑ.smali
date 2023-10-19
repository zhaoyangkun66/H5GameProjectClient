.class public L㚬/䂻/ბ/ᣑ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, L㚬/䂻/ბ/㲊;->䆀(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

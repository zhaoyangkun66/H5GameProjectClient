.class public L㚬/䂻/ბ/㥁$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㥁;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/ბ/㥁;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㥁;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㥁$㺴;->உ:L㚬/䂻/ბ/㥁;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/㥁$㺴;->உ:L㚬/䂻/ბ/㥁;

    invoke-virtual {p1}, L㚬/䂻/ბ/㥁;->ม()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/㥁$㺴;->உ:L㚬/䂻/ბ/㥁;

    iget-object p1, p1, L㚬/䂻/ბ/㥁;->㨃:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/㥁$㺴;->உ:L㚬/䂻/ბ/㥁;

    iget-object p2, p1, L㚬/䂻/ბ/㥁;->ᾦ:Landroid/os/Handler;

    iget-object p1, p1, L㚬/䂻/ბ/㥁;->㲧:L㚬/䂻/ბ/㥁$䆀;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, L㚬/䂻/ბ/㥁$㺴;->உ:L㚬/䂻/ბ/㥁;

    iget-object p1, p1, L㚬/䂻/ბ/㥁;->㲧:L㚬/䂻/ბ/㥁$䆀;

    invoke-virtual {p1}, L㚬/䂻/ბ/㥁$䆀;->run()V

    :cond_0
    return-void
.end method

.class public L㚬/䂻/ბ/ᰘ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/ᰘ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/ᰘ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/ᰘ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᰘ$உ;->䂻:L㚬/䂻/ბ/ᰘ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᰘ$உ;->䂻:L㚬/䂻/ბ/ᰘ;

    iget-object v0, v0, L㚬/䂻/ბ/ᰘ;->ḓ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

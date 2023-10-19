.class public L㚬/䂻/㧦/ಫ$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㫏;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/㧦/ಫ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ಫ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ಫ$㚬;->உ:L㚬/䂻/㧦/ಫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$㚬;->உ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

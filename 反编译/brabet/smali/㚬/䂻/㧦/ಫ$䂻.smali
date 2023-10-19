.class public L㚬/䂻/㧦/ಫ$䂻;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


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

    iput-object p1, p0, L㚬/䂻/㧦/ಫ$䂻;->உ:L㚬/䂻/㧦/ಫ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$䂻;->உ:L㚬/䂻/㧦/ಫ;

    const/4 v0, 0x0

    iput-object v0, p1, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

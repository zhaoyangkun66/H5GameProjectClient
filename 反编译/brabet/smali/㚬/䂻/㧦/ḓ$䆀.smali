.class public L㚬/䂻/㧦/ḓ$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/㧦/ḓ;->ᴇ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v1, v0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ᭊ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ᓟ()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v2, v0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v2

    invoke-virtual {v2, v1}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    iput-object v2, v0, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    new-instance v1, L㚬/䂻/㧦/ḓ$䆀$உ;

    invoke-direct {v1, p0}, L㚬/䂻/㧦/ḓ$䆀$உ;-><init>(L㚬/䂻/㧦/ḓ$䆀;)V

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䆀;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

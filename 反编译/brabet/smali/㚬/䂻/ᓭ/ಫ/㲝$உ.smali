.class public L㚬/䂻/ᓭ/ಫ/㲝$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/㲝;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ᓭ/ಫ/㲝;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/㲝;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㲝;->䂻()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->㲧()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㲝;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

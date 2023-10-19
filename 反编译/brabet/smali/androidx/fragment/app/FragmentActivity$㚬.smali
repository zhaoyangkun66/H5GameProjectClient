.class public Landroidx/fragment/app/FragmentActivity$㚬;
.super L㚬/㧦/㺴/ಫ;
.source ""

# interfaces
.implements L㚬/ἥ/㖪;
.implements L㚬/உ/㚬;
.implements L㚬/உ/ḓ/㺴;
.implements L㚬/㧦/㺴/㲝;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u39e6/\u3eb4/\u0cab<",
        "Landroidx/fragment/app/FragmentActivity;",
        ">;",
        "L\u36ac/\u1f25/\u35aa;",
        "L\u36ac/\u0b89/\u36ac;",
        "L\u36ac/\u0b89/\u1e13/\u3eb4;",
        "L\u36ac/\u39e6/\u3eb4/\u3c9d;"
    }
.end annotation


# instance fields
.field public final synthetic 䆀:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1}, L㚬/㧦/㺴/ಫ;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()L㚬/ἥ/ḓ;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()L㚬/ἥ/ḙ;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()L㚬/ἥ/ḙ;

    move-result-object v0

    return-object v0
.end method

.method public உ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public ბ()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public ᓭ()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public bridge synthetic ℓ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity$㚬;->ბ()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public ㄏ()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public 㚬(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public 㧦(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public 㹖(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, L㚬/ℓ/㺴/உ;->ბ(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public 㺴()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$㚬;->䆀:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

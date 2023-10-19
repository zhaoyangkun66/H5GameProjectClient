.class public Landroidx/fragment/app/FragmentActivity$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/உ/㺴/䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$䂻;->உ:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$䂻;->உ:Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/㧦/㺴/ℓ;->உ(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$䂻;->உ:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->உ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$䂻;->உ:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ℓ;->ม(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

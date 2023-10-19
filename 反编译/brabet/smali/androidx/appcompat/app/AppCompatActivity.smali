.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""

# interfaces
.implements L㚬/䂻/㧦/㚬;
.implements L㚬/ℓ/㺴/ℓ$உ;


# instance fields
.field public 㚬:Landroid/content/res/Resources;

.field public 䂻:L㚬/䂻/㧦/㺴;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/㺴;->㚬(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㺴(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->䆀()L㚬/䂻/㧦/உ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->ᆻ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->䆀()L㚬/䂻/㧦/உ;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, L㚬/䂻/㧦/உ;->ბ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ᆻ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ಫ()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->㚬:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, L㚬/䂻/ბ/ᣦ;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᣦ;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, L㚬/䂻/ბ/ᣦ;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->㚬:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->㚬:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ἥ()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->㚬:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatActivity;->㚬:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ბ(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ಫ()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->㹖()V

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㲝(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->㞘()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->㹖(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->䆀()L㚬/䂻/㧦/உ;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, L㚬/䂻/㧦/உ;->ಫ()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->㧦()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㭲(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ḙ()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㖪(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->㢏()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ม()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object p2

    invoke-virtual {p2, p1}, L㚬/䂻/㧦/㺴;->㰫(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->䆀()L㚬/䂻/㧦/உ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->㲝()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㫏(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ಋ(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/㺴;->ᾦ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ڈ(I)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ἥ()V

    return-void
.end method

.method public உ()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, L㚬/ℓ/㺴/䆀;->உ(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public ಫ()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public ཇ(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/㺴/䆀;->䆀(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public ᆻ(L㚬/ℓ/㺴/ℓ;)V
    .locals 0

    invoke-virtual {p1, p0}, L㚬/ℓ/㺴/ℓ;->䂻(Landroid/app/Activity;)L㚬/ℓ/㺴/ℓ;

    return-void
.end method

.method public ḓ()L㚬/䂻/㧦/㺴;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->䂻:L㚬/䂻/㧦/㺴;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, L㚬/䂻/㧦/㺴;->ḓ(Landroid/app/Activity;L㚬/䂻/㧦/㚬;)L㚬/䂻/㧦/㺴;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->䂻:L㚬/䂻/㧦/㺴;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->䂻:L㚬/䂻/㧦/㺴;

    return-object v0
.end method

.method public ἥ(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/㺴/䆀;->ḓ(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public ℓ(I)V
    .locals 0

    return-void
.end method

.method public ㄏ(L㚬/ℓ/㺴/ℓ;)V
    .locals 0

    return-void
.end method

.method public 㚬(L㚬/䂻/ᓭ/䂻;)V
    .locals 0

    return-void
.end method

.method public 㧦()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->உ()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->ཇ(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, L㚬/ℓ/㺴/ℓ;->㺴(Landroid/content/Context;)L㚬/ℓ/㺴/ℓ;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->ᆻ(L㚬/ℓ/㺴/ℓ;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->ㄏ(L㚬/ℓ/㺴/ℓ;)V

    invoke-virtual {v0}, L㚬/ℓ/㺴/ℓ;->ḓ()V

    :try_start_0
    invoke-static {p0}, L㚬/ℓ/㺴/உ;->ㄏ(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->ἥ(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final 㹖(ILandroid/view/KeyEvent;)Z
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 㺴(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public 䂻(L㚬/䂻/ᓭ/䂻;)V
    .locals 0

    return-void
.end method

.method public 䆀()L㚬/䂻/㧦/உ;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    return-object v0
.end method

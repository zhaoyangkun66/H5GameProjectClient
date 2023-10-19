.class public L㚬/䂻/㧦/ḓ$ಫ;
.super L㚬/䂻/ᓭ/ㄏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0cab"
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0, p2}, L㚬/䂻/ᓭ/ㄏ;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/ḓ;->ἂ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ㄏ;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ㄏ;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, L㚬/䂻/㧦/ḓ;->ᗼ(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ㄏ;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ㄏ;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p2, p1}, L㚬/䂻/㧦/ḓ;->ਬ(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ㄏ;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p2, p1}, L㚬/䂻/㧦/ḓ;->Ꭿ(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, L㚬/䂻/ᓭ/ಫ/ᆻ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᣦ(Z)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, L㚬/䂻/ᓭ/ㄏ;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᣦ(Z)V

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, v0, p3}, L㚬/䂻/ᓭ/ㄏ;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, L㚬/䂻/ᓭ/ㄏ;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->䆍()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ$ಫ;->䂻(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ㄏ;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->䆍()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ$ಫ;->䂻(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ㄏ;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public final 䂻(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    new-instance v0, L㚬/䂻/ᓭ/䆀$உ;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    iget-object v1, v1, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, L㚬/䂻/ᓭ/䆀$உ;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ಫ;->㚬:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/ḓ;->ᵁ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/䆀$உ;->ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

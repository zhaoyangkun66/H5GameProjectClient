.class public L㚬/䂻/ᓭ/ಫ/ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements L㚬/䂻/ᓭ/ಫ/ἥ$உ;


# instance fields
.field public ḓ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

.field public 㚬:L㚬/䂻/㧦/䂻;

.field public 㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

.field public 䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭢(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ᓭ/ಫ/ḓ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p2, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬()V

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->ḓ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    :cond_2
    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public 㺴(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    new-instance v1, L㚬/䂻/㧦/䂻$உ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, L㚬/䂻/㧦/䂻$உ;-><init>(Landroid/content/Context;)V

    new-instance v2, L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-virtual {v1}, L㚬/䂻/㧦/䂻$உ;->䂻()Landroid/content/Context;

    move-result-object v3

    sget v4, L㚬/䂻/ᆻ;->ಫ:I

    invoke-direct {v2, v3, v4}, L㚬/䂻/ᓭ/ಫ/ḓ;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-virtual {v2, p0}, L㚬/䂻/ᓭ/ಫ/ḓ;->ℓ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-virtual {v2, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻(L㚬/䂻/ᓭ/ಫ/ἥ;)V

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴:L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, L㚬/䂻/㧦/䂻$உ;->㚬(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)L㚬/䂻/㧦/䂻$உ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄬ()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, L㚬/䂻/㧦/䂻$உ;->㺴(Landroid/view/View;)L㚬/䂻/㧦/䂻$உ;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, L㚬/䂻/㧦/䂻$உ;->ḓ(Landroid/graphics/drawable/Drawable;)L㚬/䂻/㧦/䂻$உ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, L㚬/䂻/㧦/䂻$உ;->ℓ(Ljava/lang/CharSequence;)L㚬/䂻/㧦/䂻$உ;

    :goto_0
    invoke-virtual {v1, p0}, L㚬/䂻/㧦/䂻$உ;->䆀(Landroid/content/DialogInterface$OnKeyListener;)L㚬/䂻/㧦/䂻$உ;

    invoke-virtual {v1}, L㚬/䂻/㧦/䂻$உ;->உ()L㚬/䂻/㧦/䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->㚬:L㚬/䂻/㧦/䂻;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ℓ;->ḓ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

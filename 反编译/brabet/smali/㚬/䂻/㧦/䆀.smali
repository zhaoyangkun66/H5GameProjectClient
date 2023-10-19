.class public L㚬/䂻/㧦/䆀;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements L㚬/䂻/㧦/㚬;


# instance fields
.field public final 㚬:L㚬/ℓ/ἥ/ḓ$உ;

.field public 䂻:L㚬/䂻/㧦/㺴;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, L㚬/䂻/㧦/䆀;->ḓ(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, L㚬/䂻/㧦/䆀$உ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/䆀$உ;-><init>(L㚬/䂻/㧦/䆀;)V

    iput-object v0, p0, L㚬/䂻/㧦/䆀;->㚬:L㚬/ℓ/ἥ/ḓ$உ;

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-static {p1, p2}, L㚬/䂻/㧦/䆀;->ḓ(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ڈ(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㲝(Landroid/os/Bundle;)V

    return-void
.end method

.method public static ḓ(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, L㚬/䂻/உ;->ㄬ:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/㺴;->㚬(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/㧦/䆀;->㚬:L㚬/ℓ/ἥ/ḓ$உ;

    invoke-static {v1, v0, p0, p1}, L㚬/ℓ/ἥ/ḓ;->ḓ(L㚬/ℓ/ἥ/ḓ$உ;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

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

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ᆻ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ἥ()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->㹖()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㲝(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/㺴;->ม()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㫏(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ಋ(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/㺴;->ᾦ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㰫(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->㰫(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public உ()L㚬/䂻/㧦/㺴;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䆀;->䂻:L㚬/䂻/㧦/㺴;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, L㚬/䂻/㧦/㺴;->䆀(Landroid/app/Dialog;L㚬/䂻/㧦/㚬;)L㚬/䂻/㧦/㺴;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/㧦/䆀;->䂻:L㚬/䂻/㧦/㺴;

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/䆀;->䂻:L㚬/䂻/㧦/㺴;

    return-object v0
.end method

.method public ᆻ(I)Z
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/䆀;->உ()L㚬/䂻/㧦/㺴;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/㺴;->ㄬ(I)Z

    move-result p1

    return p1
.end method

.method public 㚬(L㚬/䂻/ᓭ/䂻;)V
    .locals 0

    return-void
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

.method public 䆀(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

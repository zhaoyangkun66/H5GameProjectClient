.class public L㚬/䂻/㧦/䂻;
.super L㚬/䂻/㧦/䆀;
.source ""

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/㧦/䂻$உ;
    }
.end annotation


# instance fields
.field public final 㺴:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, L㚬/䂻/㧦/䂻;->ㄏ(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, L㚬/䂻/㧦/䆀;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;L㚬/䂻/㧦/䆀;Landroid/view/Window;)V

    iput-object p1, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method public static ㄏ(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, L㚬/䂻/உ;->ᓭ:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/㧦/䆀;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertController;->ḓ()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->ᆻ(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertController;->ℓ(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, L㚬/䂻/㧦/䆀;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->㲝(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ℓ()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertController;->㺴()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

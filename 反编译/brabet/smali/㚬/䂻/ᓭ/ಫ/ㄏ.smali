.class public final L㚬/䂻/ᓭ/ಫ/ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ᆻ/உ/䂻;


# instance fields
.field public ש:Landroid/view/ContextMenu$ContextMenuInfo;

.field public ڈ:Landroid/view/MenuItem$OnActionExpandListener;

.field public final உ:I

.field public ಋ:Landroid/view/View;

.field public ಫ:C

.field public ม:Z

.field public ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public ბ:Ljava/lang/Runnable;

.field public ᆻ:Landroid/content/Intent;

.field public ᓭ:L㚬/䂻/ᓭ/ಫ/㞘;

.field public ḓ:Ljava/lang/CharSequence;

.field public ḙ:Landroid/content/res/ColorStateList;

.field public ἥ:I

.field public ᾦ:L㚬/ℓ/ἥ/䂻;

.field public ℓ:C

.field public ㄏ:I

.field public ㄬ:I

.field public 㖪:Landroid/graphics/PorterDuff$Mode;

.field public final 㚬:I

.field public 㞘:Ljava/lang/CharSequence;

.field public 㢏:Z

.field public 㧦:I

.field public 㫏:I

.field public 㭲:Ljava/lang/CharSequence;

.field public 㰫:Z

.field public 㲝:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public 㲧:Z

.field public 㹖:Landroid/graphics/drawable/Drawable;

.field public final 㺴:I

.field public final 䂻:I

.field public 䆀:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ᆻ;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    const/4 v1, 0x0

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ:Landroid/content/res/ColorStateList;

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㢏:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ม:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    const/16 v1, 0x10

    iput v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㰫:Z

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput p3, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->உ:I

    iput p2, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->䂻:I

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㚬:I

    iput p5, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴:I

    iput-object p6, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ:Ljava/lang/CharSequence;

    iput p7, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    return-void
.end method

.method public static 㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ڈ:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ڈ:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, L㚬/ℓ/ἥ/䂻;->㺴(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㞘:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->䂻:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    invoke-static {v0, v1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->உ:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ש:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㚬:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ:L㚬/䂻/ᓭ/ಫ/㞘;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->䆀:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ:Ljava/lang/CharSequence;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㭲:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ:L㚬/䂻/ᓭ/ಫ/㞘;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㰫:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/ℓ/ἥ/䂻;->ᆻ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/䂻;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ბ(I)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲝(Landroid/view/View;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    if-ne v0, p1, :cond_0

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᭊ(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㭲(Z)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setContentDescription(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㞘:Ljava/lang/CharSequence;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    iget p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 p1, p1, -0x11

    :goto_0
    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖:Landroid/graphics/drawable/Drawable;

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ:I

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㢏:Z

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ม:Z

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    if-ne v0, p1, :cond_0

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ڈ:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲝:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㥁(L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ม(I)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ:Ljava/lang/CharSequence;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ:L㚬/䂻/ᓭ/ಫ/㞘;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/㞘;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->䆀:Ljava/lang/CharSequence;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setTooltipText(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㭲:Ljava/lang/CharSequence;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ർ(L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḓ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public உ(L㚬/ℓ/ἥ/䂻;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/䂻;->ℓ()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz p1, :cond_1

    new-instance v0, L㚬/䂻/ᓭ/ಫ/ㄏ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/ㄏ$உ;-><init>(L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/䂻;->ಫ(L㚬/ℓ/ἥ/䂻$䂻;)V

    :cond_1
    return-object p0
.end method

.method public ಋ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᱹ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ಫ()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, L㚬/ℓ/ἥ/䂻;->㺴(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public ม(I)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setShowAsAction(I)V

    return-object p0
.end method

.method public ཇ()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public ბ(I)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲝(Landroid/view/View;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public ᆻ()C
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᰘ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ℓ:C

    :goto_0
    return v0
.end method

.method public ᓭ()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ḓ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㢏:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ม:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㢏:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ม:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧:Z

    :cond_3
    return-object p1
.end method

.method public ḙ(Z)V
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    return-void
.end method

.method public ἥ()Z
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᾦ()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㫏:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ℓ()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ()C

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, L㚬/䂻/ℓ;->㧦:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᰘ()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦:I

    goto :goto_0

    :cond_2
    iget v3, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄏ:I

    :goto_0
    const/high16 v4, 0x10000

    sget v5, L㚬/䂻/ℓ;->ᆻ:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/16 v4, 0x1000

    sget v5, L㚬/䂻/ℓ;->㚬:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x2

    sget v5, L㚬/䂻/ℓ;->䂻:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x1

    sget v5, L㚬/䂻/ℓ;->ℓ:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v4, 0x4

    sget v5, L㚬/䂻/ℓ;->ಫ:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, L㚬/䂻/ℓ;->䆀:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v2, v3, v5, v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v0, v5, :cond_5

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    sget v0, L㚬/䂻/ℓ;->ㄏ:I

    goto :goto_1

    :cond_4
    sget v0, L㚬/䂻/ℓ;->ḓ:I

    goto :goto_1

    :cond_5
    sget v0, L㚬/䂻/ℓ;->㺴:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/ཇ$உ;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, L㚬/䂻/ᓭ/ಫ/ཇ$உ;->㺴()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public ㄬ(Z)Z
    .locals 3

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public 㖪(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    iget p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 p1, p1, -0x21

    :goto_0
    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㥁(L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    return-void
.end method

.method public 㞘(Z)V
    .locals 1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㰫:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public 㢏(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ש:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public 㧦()Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲝:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, v0, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ბ:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_2
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ:Landroid/content/Intent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᆻ:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, L㚬/ℓ/ἥ/䂻;->ḓ()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public 㫏()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಋ()Z

    move-result v0

    return v0
.end method

.method public 㭲(Z)V
    .locals 3

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_1
    return-void
.end method

.method public 㲝(Landroid/view/View;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 2

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಋ:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->உ:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㥁(L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    return-object p0
.end method

.method public 㲧(L㚬/䂻/ᓭ/ಫ/㞘;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ:L㚬/䂻/ᓭ/ಫ/㞘;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/㞘;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public 㹖()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 䂻()L㚬/ℓ/ἥ/䂻;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᾦ:L㚬/ℓ/ἥ/䂻;

    return-object v0
.end method

.method public 䆀()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ㄏ;->㺴:I

    return v0
.end method

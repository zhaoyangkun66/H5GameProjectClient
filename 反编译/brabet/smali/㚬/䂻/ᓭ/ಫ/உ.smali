.class public L㚬/䂻/ᓭ/ಫ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ᆻ/உ/䂻;


# instance fields
.field public final உ:I

.field public ಫ:I

.field public ཇ:Ljava/lang/CharSequence;

.field public ბ:Landroid/graphics/PorterDuff$Mode;

.field public ᆻ:C

.field public ᓭ:Landroid/content/res/ColorStateList;

.field public ḓ:Ljava/lang/CharSequence;

.field public ἥ:Ljava/lang/CharSequence;

.field public ℓ:I

.field public ㄏ:C

.field public final 㚬:I

.field public 㞘:Z

.field public 㧦:Landroid/graphics/drawable/Drawable;

.field public 㭲:I

.field public 㲝:Z

.field public 㹖:Landroid/content/Context;

.field public 㺴:Ljava/lang/CharSequence;

.field public final 䂻:I

.field public 䆀:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p4, 0x1000

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->ℓ:I

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->ಫ:I

    const/4 p4, 0x0

    iput-object p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᓭ:Landroid/content/res/ColorStateList;

    iput-object p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->ბ:Landroid/graphics/PorterDuff$Mode;

    const/4 p4, 0x0

    iput-boolean p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->㲝:Z

    iput-boolean p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->㞘:Z

    const/16 p4, 0x10

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㹖:Landroid/content/Context;

    iput p3, p0, L㚬/䂻/ᓭ/ಫ/உ;->உ:I

    iput p2, p0, L㚬/䂻/ᓭ/ಫ/உ;->䂻:I

    iput p5, p0, L㚬/䂻/ᓭ/ಫ/உ;->㚬:I

    iput-object p6, p0, L㚬/䂻/ᓭ/ಫ/உ;->㺴:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ಫ:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ㄏ:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ἥ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->䂻:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᓭ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ბ:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->䆀:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->உ:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ℓ:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᆻ:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㚬:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㺴:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ḓ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㺴:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->ཇ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

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
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->㺴(I)L㚬/ℓ/ᆻ/உ/䂻;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->ḓ(Landroid/view/View;)L㚬/ℓ/ᆻ/உ/䂻;

    const/4 p1, 0x0

    throw p1
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ㄏ:C

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ㄏ:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ಫ:I

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->setContentDescription(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ἥ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㹖:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/ℓ/ḓ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/உ;->㚬()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/உ;->㚬()V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᓭ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㲝:Z

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/உ;->㚬()V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ბ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㞘:Z

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/உ;->㚬()V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->䆀:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᆻ:C

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᆻ:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ℓ:I

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᆻ:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ㄏ:C

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᆻ:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ℓ:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ㄏ:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ಫ:I

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->䆀(I)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㹖:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㺴:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㺴:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ḓ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->setTooltipText(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ཇ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int p1, v0, v1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㭲:I

    return-object p0
.end method

.method public உ(L㚬/ℓ/ἥ/䂻;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ḓ(Landroid/view/View;)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final 㚬()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㲝:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㞘:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/உ;->㲝:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ᓭ:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㞘:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/உ;->㧦:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/உ;->ბ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public 㺴(I)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public 䂻()L㚬/ℓ/ἥ/䂻;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 䆀(I)L㚬/ℓ/ᆻ/உ/䂻;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/உ;->setShowAsAction(I)V

    return-object p0
.end method

.class public L㚬/䂻/ბ/ℓ;
.super Landroid/widget/CheckedTextView;
.source ""


# static fields
.field public static final 㚬:[I


# instance fields
.field public final 䂻:L㚬/䂻/ბ/㲧;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, L㚬/䂻/ბ/ℓ;->㚬:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/ℓ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-static {p1}, L㚬/䂻/ბ/ⵦ;->䂻(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/㲧;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㲧;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, L㚬/䂻/ბ/ℓ;->䂻:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/㲧;->ἥ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->䂻()V

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, L㚬/䂻/ბ/ℓ;->㚬:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    invoke-virtual {p1, v1}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, L㚬/䂻/ბ/ℓ;->䂻:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->䂻()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, L㚬/䂻/ბ/㹖;->உ(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->ბ(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, L㚬/䂻/ბ/ℓ;->䂻:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㲧;->ბ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.class public L㚬/䂻/ბ/㢏;
.super Landroid/widget/Spinner;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㞘;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/㢏$ḓ;,
        L㚬/䂻/ბ/㢏$㚬;,
        L㚬/䂻/ბ/㢏$ᆻ;,
        L㚬/䂻/ბ/㢏$㺴;,
        L㚬/䂻/ბ/㢏$䆀;
    }
.end annotation


# static fields
.field public static final ಫ:[I


# instance fields
.field public ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

.field public ḓ:Landroid/widget/SpinnerAdapter;

.field public ℓ:I

.field public final ㄏ:Landroid/graphics/Rect;

.field public final 㚬:Landroid/content/Context;

.field public 㺴:L㚬/䂻/ბ/ᰘ;

.field public final 䂻:L㚬/䂻/ბ/ḓ;

.field public final 䆀:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, L㚬/䂻/ბ/㢏;->ಫ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㚬/䂻/உ;->㥁:I

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/㢏;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, L㚬/䂻/ბ/㢏;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, L㚬/䂻/ბ/㢏;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    sget-object v0, L㚬/䂻/ಫ;->䈳:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object v0

    new-instance v2, L㚬/䂻/ბ/ḓ;

    invoke-direct {v2, p0}, L㚬/䂻/ბ/ḓ;-><init>(Landroid/view/View;)V

    iput-object v2, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz p5, :cond_0

    new-instance v2, L㚬/䂻/ᓭ/㺴;

    invoke-direct {v2, p1, p5}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    :goto_0
    iput-object v2, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    goto :goto_1

    :cond_0
    sget p5, L㚬/䂻/ಫ;->ඌ:I

    invoke-virtual {v0, p5, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p5

    if-eqz p5, :cond_1

    new-instance v2, L㚬/䂻/ᓭ/㺴;

    invoke-direct {v2, p1, p5}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    :goto_1
    const/4 p5, -0x1

    const/4 v2, 0x0

    if-ne p4, p5, :cond_4

    :try_start_0
    sget-object p5, L㚬/䂻/ბ/㢏;->ಫ:[I

    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz p5, :cond_4

    :goto_2
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object p5, v2

    :goto_3
    :try_start_2
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p5, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, p5

    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p1

    :cond_4
    :goto_5
    const/4 p5, 0x1

    if-eqz p4, :cond_6

    if-eq p4, p5, :cond_5

    goto :goto_6

    :cond_5
    new-instance p4, L㚬/䂻/ბ/㢏$ḓ;

    iget-object v3, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, L㚬/䂻/ბ/㢏$ḓ;-><init>(L㚬/䂻/ბ/㢏;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v3, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    sget-object v4, L㚬/䂻/ಫ;->䈳:[I

    invoke-static {v3, p2, v4, p3, v1}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object v1

    sget v3, L㚬/䂻/ಫ;->Ẉ:I

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, L㚬/䂻/ბ/ᣝ;->ἥ(II)I

    move-result v3

    iput v3, p0, L㚬/䂻/ბ/㢏;->ℓ:I

    sget v3, L㚬/䂻/ಫ;->ᡳ:I

    invoke-virtual {v1, v3}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p4, v3}, L㚬/䂻/ბ/㥁;->㚬(Landroid/graphics/drawable/Drawable;)V

    sget v3, L㚬/䂻/ಫ;->ጜ:I

    invoke-virtual {v0, v3}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, L㚬/䂻/ბ/㢏$ḓ;->ἥ(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iput-object p4, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    new-instance v1, L㚬/䂻/ბ/㢏$உ;

    invoke-direct {v1, p0, p0, p4}, L㚬/䂻/ბ/㢏$உ;-><init>(L㚬/䂻/ბ/㢏;Landroid/view/View;L㚬/䂻/ბ/㢏$ḓ;)V

    iput-object v1, p0, L㚬/䂻/ბ/㢏;->㺴:L㚬/䂻/ბ/ᰘ;

    goto :goto_6

    :cond_6
    new-instance p4, L㚬/䂻/ბ/㢏$㚬;

    invoke-direct {p4, p0}, L㚬/䂻/ბ/㢏$㚬;-><init>(L㚬/䂻/ბ/㢏;)V

    iput-object p4, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    sget v1, L㚬/䂻/ಫ;->ጜ:I

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, L㚬/䂻/ბ/㢏$ᆻ;->ἥ(Ljava/lang/CharSequence;)V

    :goto_6
    sget p4, L㚬/䂻/ಫ;->㲲:I

    invoke-virtual {v0, p4}, L㚬/䂻/ბ/ᣝ;->㲝(I)[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_7

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget p1, L㚬/䂻/ᆻ;->ḙ:I

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v1}, L㚬/䂻/ბ/㢏;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_7
    invoke-virtual {v0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iput-boolean p5, p0, L㚬/䂻/ბ/㢏;->䆀:Z

    iget-object p1, p0, L㚬/䂻/ბ/㢏;->ḓ:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㢏;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v2, p0, L㚬/䂻/ბ/㢏;->ḓ:Landroid/widget/SpinnerAdapter;

    :cond_8
    iget-object p1, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ḓ;->ḓ(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->䂻()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->ḓ()I

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->ℓ()I

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    iget v0, p0, L㚬/䂻/ბ/㢏;->ℓ:I

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getInternalPopup()L㚬/䂻/ბ/㢏$ᆻ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->ಫ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->㧦()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㚬()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->dismiss()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, L㚬/䂻/ბ/㢏;->உ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, L㚬/䂻/ბ/㢏$䆀;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, L㚬/䂻/ბ/㢏$䆀;->䂻:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, L㚬/䂻/ბ/㢏$䂻;

    invoke-direct {v0, p0}, L㚬/䂻/ბ/㢏$䂻;-><init>(L㚬/䂻/ბ/㢏;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, L㚬/䂻/ბ/㢏$䆀;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/䂻/ბ/㢏$䆀;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v1, :cond_0

    invoke-interface {v1}, L㚬/䂻/ბ/㢏$ᆻ;->䂻()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, L㚬/䂻/ბ/㢏$䆀;->䂻:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->㺴:L㚬/䂻/ბ/ᰘ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, L㚬/䂻/ბ/ᰘ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->䂻()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/㢏;->䂻()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㢏;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    iget-boolean v0, p0, L㚬/䂻/ბ/㢏;->䆀:Z

    if-nez v0, :cond_0

    iput-object p1, p0, L㚬/䂻/ბ/㢏;->ḓ:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->㚬:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    iget-object v1, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    new-instance v2, L㚬/䂻/ბ/㢏$㺴;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, L㚬/䂻/ბ/㢏$㺴;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, L㚬/䂻/ბ/㢏$ᆻ;->ᓭ(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->䆀(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ᆻ(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㢏$ᆻ;->ბ(I)V

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㢏$ᆻ;->㺴(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㢏$ᆻ;->ཇ(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/䂻/ბ/㢏;->ℓ:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㢏$ᆻ;->㚬(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/ბ/㢏;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㢏;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㢏$ᆻ;->ἥ(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ㄏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ಫ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public உ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p1, p0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v3, p2

    :cond_4
    return v3
.end method

.method public 䂻()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, L㚬/䂻/ბ/㢏$ᆻ;->䆀(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㢏;->ᆻ:L㚬/䂻/ბ/㢏$ᆻ;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v1}, L㚬/䂻/ბ/㢏$ᆻ;->䆀(II)V

    :goto_0
    return-void
.end method

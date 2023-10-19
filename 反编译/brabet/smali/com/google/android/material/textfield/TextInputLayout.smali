.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$ḓ;,
        Lcom/google/android/material/textfield/TextInputLayout$ℓ;,
        Lcom/google/android/material/textfield/TextInputLayout$ᆻ;,
        Lcom/google/android/material/textfield/TextInputLayout$䆀;
    }
.end annotation


# static fields
.field public static final ϣ:I


# instance fields
.field public final Ԁ:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$\u4180;",
            ">;"
        }
    .end annotation
.end field

.field public Խ:Landroid/view/View$OnLongClickListener;

.field public final ש:Landroid/graphics/RectF;

.field public final ڈ:Landroid/graphics/Rect;

.field public क:Z

.field public final ಇ:I

.field public ಋ:I

.field public ಫ:Landroid/widget/TextView;

.field public ർ:Landroid/graphics/PorterDuff$Mode;

.field public ග:I

.field public final ม:I

.field public ཇ:Landroid/content/res/ColorStateList;

.field public ბ:Ljava/lang/CharSequence;

.field public ᆻ:Z

.field public ᇿ:Landroid/graphics/drawable/Drawable;

.field public Ᏼ:I

.field public ᓭ:Z

.field public ᗼ:Z

.field public ᘚ:Landroid/view/View$OnLongClickListener;

.field public ᣑ:Landroid/graphics/drawable/Drawable;

.field public ᣝ:Z

.field public ᣦ:Landroid/content/res/ColorStateList;

.field public ᭊ:Z

.field public final ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

.field public ᱹ:Landroid/content/res/ColorStateList;

.field public ḓ:Ljava/lang/CharSequence;

.field public ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

.field public final Ổ:I

.field public ỷ:I

.field public final ἂ:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$\u11bb;",
            ">;"
        }
    .end annotation
.end field

.field public final ἃ:I

.field public ἥ:Landroid/content/res/ColorStateList;

.field public ᾦ:I

.field public ℓ:I

.field public ⵦ:Landroid/content/res/ColorStateList;

.field public final ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

.field public ⷜ:Landroid/animation/ValueAnimator;

.field public ㄏ:Z

.field public final ㄬ:I

.field public 㖆:Z

.field public final 㖪:I

.field public final 㚬:Landroid/widget/FrameLayout;

.field public 㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public 㟘:Landroid/graphics/PorterDuff$Mode;

.field public final 㠭:I

.field public 㢏:I

.field public 㥁:Z

.field public 㧦:I

.field public 㨃:Landroid/graphics/Typeface;

.field public final 㫏:I

.field public 㭢:Landroid/graphics/drawable/Drawable;

.field public 㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public final 㮕:Lcom/google/android/material/internal/CheckableImageButton;

.field public final 㰫:Landroid/graphics/Rect;

.field public final 㲊:Lcom/google/android/material/internal/CheckableImageButton;

.field public 㲝:Z

.field public 㲧:I

.field public 㹖:I

.field public 㺴:Landroid/widget/EditText;

.field public 㽛:Landroid/content/res/ColorStateList;

.field public final 䂻:Landroid/widget/FrameLayout;

.field public 䃻:Z

.field public final 䅚:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3586/\u1e13;",
            ">;"
        }
    .end annotation
.end field

.field public final 䆀:L㺴/㚬/உ/䂻/㖆/䆀;

.field public 䆍:Z

.field public final 䋡:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, L㺴/㚬/உ/䂻/ಫ;->㚬:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->ϣ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㺴/㚬/உ/䂻/䂻;->ㄬ:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/textfield/TextInputLayout;->ϣ:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䆀(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-direct {v1, v0}, L㺴/㚬/உ/䂻/㖆/䆀;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ڈ:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->㰫:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ש:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Ԁ:Ljava/util/LinkedHashSet;

    const/4 v10, 0x0

    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ἂ:Ljava/util/LinkedHashSet;

    new-instance v1, L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-direct {v1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->䂻:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v12}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const v5, 0x800015

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v2, L㺴/㚬/உ/䂻/㹖/உ;->உ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᭊ(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㮕(Landroid/animation/TimeInterpolator;)V

    const v2, 0x800033

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃(I)V

    sget-object v3, L㺴/㚬/உ/䂻/㧦;->㯇:[I

    const/4 v1, 0x5

    new-array v6, v1, [I

    sget v14, L㺴/㚬/உ/䂻/㧦;->ḑ:I

    aput v14, v6, v10

    sget v15, L㺴/㚬/உ/䂻/㧦;->ᓓ:I

    aput v15, v6, v12

    sget v5, L㺴/㚬/உ/䂻/㧦;->ᅚ:I

    const/4 v4, 0x2

    aput v5, v6, v4

    sget v2, L㺴/㚬/உ/䂻/㧦;->ⶶ:I

    const/4 v1, 0x3

    aput v2, v6, v1

    sget v10, L㺴/㚬/உ/䂻/㧦;->㤌:I

    const/16 v16, 0x4

    aput v10, v6, v16

    move-object v1, v11

    move/from16 v17, v2

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v18, v5

    move v5, v9

    invoke-static/range {v1 .. v6}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㹖(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)L㚬/䂻/ბ/ᣝ;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/㧦;->₲:I

    invoke-virtual {v1, v2, v12}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    sget v2, L㺴/㚬/உ/䂻/㧦;->ѝ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㑮:I

    invoke-virtual {v1, v2, v12}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->क:Z

    invoke-static {v11, v7, v8, v9}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ḓ(Landroid/content/Context;Landroid/util/AttributeSet;II)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    move-result-object v2

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->ἥ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, L㺴/㚬/உ/䂻/㺴;->㲧:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㖪:I

    sget v2, L㺴/㚬/உ/䂻/㧦;->㩇:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ม:I

    sget v2, L㺴/㚬/உ/䂻/㧦;->ᡳ:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, L㺴/㚬/உ/䂻/㺴;->ㄬ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ㄬ:I

    sget v3, L㺴/㚬/உ/䂻/㧦;->ጜ:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, L㺴/㚬/உ/䂻/㺴;->㫏:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->㫏:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㲧:I

    sget v2, L㺴/㚬/உ/䂻/㧦;->䈳:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->㺴(IF)F

    move-result v2

    sget v4, L㺴/㚬/உ/䂻/㧦;->㞜:I

    invoke-virtual {v1, v4, v3}, L㚬/䂻/ბ/ᣝ;->㺴(IF)F

    move-result v4

    sget v5, L㺴/㚬/உ/䂻/㧦;->㒺:I

    invoke-virtual {v1, v5, v3}, L㚬/䂻/ბ/ᣝ;->㺴(IF)F

    move-result v5

    sget v6, L㺴/㚬/உ/䂻/㧦;->㭭:I

    invoke-virtual {v1, v6, v3}, L㚬/䂻/ბ/ᣝ;->㺴(IF)F

    move-result v3

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v6}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㢏()L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    move-result-object v6

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-ltz v8, :cond_0

    invoke-virtual {v6, v2}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㫏(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    :cond_0
    cmpl-float v2, v4, v7

    if-ltz v2, :cond_1

    invoke-virtual {v6, v4}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㰫(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    :cond_1
    cmpl-float v2, v5, v7

    if-ltz v2, :cond_2

    invoke-virtual {v6, v5}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㢏(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    :cond_2
    cmpl-float v2, v3, v7

    if-ltz v2, :cond_3

    invoke-virtual {v6, v3}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㞘(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    :cond_3
    invoke-virtual {v6}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->ἥ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    sget v2, L㺴/㚬/உ/䂻/㧦;->ނ:I

    invoke-static {v11, v1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const v3, 0x1010367

    const v4, -0x101009e

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->Ᏼ:I

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v6, v12, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->㠭:I

    new-array v6, v12, [I

    aput v3, v6, v7

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    sget v2, L㺴/㚬/உ/䂻/㚬;->䂻:I

    invoke-static {v11, v2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    new-array v6, v12, [I

    aput v4, v6, v7

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->㠭:I

    new-array v6, v12, [I

    aput v3, v6, v7

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_0
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䋡:I

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->Ᏼ:I

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->㠭:I

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->䋡:I

    :goto_1
    sget v2, L㺴/㚬/உ/䂻/㧦;->ᓇ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    :cond_6
    sget v2, L㺴/㚬/உ/䂻/㧦;->㲲:I

    invoke-static {v11, v1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ಇ:I

    new-array v2, v12, [I

    const/4 v7, 0x0

    aput v4, v2, v7

    invoke-virtual {v6, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ἃ:I

    new-array v2, v12, [I

    aput v3, v2, v7

    invoke-virtual {v6, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->Ổ:I

    new-array v2, v12, [I

    const v3, 0x101009c

    aput v3, v2, v7

    invoke-virtual {v6, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, L㚬/䂻/ბ/ᣝ;->䂻(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    sget v2, L㺴/㚬/உ/䂻/㚬;->㚬:I

    invoke-static {v11, v2}, L㚬/ℓ/ḓ/உ;->䂻(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ಇ:I

    sget v2, L㺴/㚬/உ/䂻/㚬;->㺴:I

    invoke-static {v11, v2}, L㚬/ℓ/ḓ/உ;->䂻(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ἃ:I

    sget v2, L㺴/㚬/உ/䂻/㚬;->ḓ:I

    invoke-static {v11, v2}, L㚬/ℓ/ḓ/உ;->䂻(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->Ổ:I

    :goto_2
    invoke-virtual {v1, v10, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v2

    if-eq v2, v5, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    move/from16 v3, v18

    invoke-virtual {v1, v3, v2}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v3

    sget v4, L㺴/㚬/உ/䂻/㧦;->䉁:I

    invoke-virtual {v1, v4, v2}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, L㺴/㚬/உ/䂻/ℓ;->䂻:I

    invoke-virtual {v6, v7, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget v8, L㺴/㚬/உ/䂻/㧦;->ᨁ:I

    invoke-virtual {v1, v8}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v1, v8}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    sget v8, L㺴/㚬/உ/䂻/㧦;->ᐇ:I

    invoke-virtual {v1, v8}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v11, v1, v8}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    sget v8, L㺴/㚬/உ/䂻/㧦;->㜷:I

    invoke-virtual {v1, v8}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_b

    invoke-virtual {v1, v8, v5}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v8

    invoke-static {v8, v10}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->㚬(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, L㺴/㚬/உ/䂻/ㄏ;->ḓ:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    invoke-static {v6, v8}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setClickable(Z)V

    invoke-virtual {v6, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    move/from16 v6, v17

    invoke-virtual {v1, v6, v9}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v6

    sget v8, L㺴/㚬/உ/䂻/㧦;->㳖:I

    invoke-virtual {v1, v8, v9}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v8

    sget v12, L㺴/㚬/உ/䂻/㧦;->ᯉ:I

    invoke-virtual {v1, v12}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v12

    sget v10, L㺴/㚬/உ/䂻/㧦;->Ẉ:I

    invoke-virtual {v1, v10, v9}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v10

    sget v2, L㺴/㚬/உ/䂻/㧦;->ඌ:I

    invoke-virtual {v1, v2, v5}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    invoke-virtual {v1, v14, v9}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㹖:I

    invoke-virtual {v1, v15, v9}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㧦:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v14, L㺴/㚬/உ/䂻/ℓ;->㚬:I

    invoke-virtual {v2, v14, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㮰:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->ደ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    sget v2, L㺴/㚬/உ/䂻/㧦;->ㅈ:I

    const/4 v9, 0x1

    invoke-virtual {v1, v2, v9}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    :cond_d
    sget v2, L㺴/㚬/உ/䂻/㧦;->㢳:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v11, v1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_e
    sget v2, L㺴/㚬/உ/䂻/㧦;->㿧:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1, v2, v5}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v2, v9}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->㚬(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_f
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㹖:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㧦:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->ፄ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    sget v2, L㺴/㚬/உ/䂻/㧦;->ᚭ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    sget v2, L㺴/㚬/உ/䂻/㧦;->Ↄ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    sget v2, L㺴/㚬/உ/䂻/㧦;->Ձ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    sget v2, L㺴/㚬/உ/䂻/㧦;->䃆:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    :cond_14
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->ਣ:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v3, L㺴/㚬/உ/䂻/㖆/䂻;

    invoke-direct {v3, v0}, L㺴/㚬/உ/䂻/㖆/䂻;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v3, L㺴/㚬/உ/䂻/㖆/ᆻ;

    invoke-direct {v3, v0}, L㺴/㚬/உ/䂻/㖆/ᆻ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v3, L㺴/㚬/உ/䂻/㖆/ℓ;

    invoke-direct {v3, v0}, L㺴/㚬/உ/䂻/㖆/ℓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v3, L㺴/㚬/உ/䂻/㖆/உ;

    invoke-direct {v3, v0}, L㺴/㚬/உ/䂻/㖆/உ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    new-instance v3, L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {v3, v0}, L㺴/㚬/உ/䂻/㖆/㺴;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㷵:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㦗:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    sget v2, L㺴/㚬/உ/䂻/㧦;->Ḣ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    sget v2, L㺴/㚬/உ/䂻/㧦;->ᵹ:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    goto :goto_4

    :cond_17
    sget v2, L㺴/㚬/உ/䂻/㧦;->ᱨ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㪹:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->㞠:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    sget v2, L㺴/㚬/உ/䂻/㧦;->䂼:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v11, v1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_18
    sget v2, L㺴/㚬/உ/䂻/㧦;->㰊:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2, v5}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->㚬(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_19
    :goto_4
    sget v2, L㺴/㚬/உ/䂻/㧦;->ᱨ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v2

    if-nez v2, :cond_1b

    sget v2, L㺴/㚬/உ/䂻/㧦;->䃤:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v11, v1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->䂻(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_1a
    sget v2, L㺴/㚬/உ/䂻/㧦;->ℭ:I

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2, v5}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->㚬(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1b
    invoke-virtual {v1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    return-void
.end method

.method private getEndIconDelegate()L㺴/㚬/உ/䂻/㖆/ḓ;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㖆/ḓ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䅚:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㖆/ḓ;

    :goto_0
    return-object v0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ڈ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ש()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ർ()V

    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$ḓ;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$ḓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$ḓ;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㟘(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->Խ(F)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    and-int/lit8 v1, p1, -0x71

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$உ;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$உ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḓ:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ᣝ(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->bringToFront()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->bringToFront()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㲧()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->Ổ(ZZ)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "We already have an EditText, can only have one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setErrorIconVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ڈ()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ()Z

    :cond_2
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ⵦ(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㖆()V

    :cond_0
    return-void
.end method

.method public static Ԁ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㨃(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    invoke-static {p0, v2}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic உ(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᗼ:Z

    return p0
.end method

.method public static ᇿ(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    sget p4, L㺴/㚬/உ/䂻/ㄏ;->䂻:I

    goto :goto_0

    :cond_0
    sget p4, L㺴/㚬/உ/䂻/ㄏ;->உ:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static ỷ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->Ԁ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static 㭢(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->㭢(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic 䂻(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method

.method public static 䅚(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->Ԁ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䂻:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->䂻:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㽛()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḓ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḓ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᗼ:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᗼ:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ಋ(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->㫏(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䃻:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䃻:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ἂ([I)Z

    move-result v1

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->䃻:Z

    return-void
.end method

.method public getBaseline()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㞘()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getBoxBackground()L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㞘()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭲()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㨃()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ש()F

    move-result v0

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    return v0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᆻ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἥ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἥ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    return v0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㢏()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ()I

    move-result v0

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorTextCurrentColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ม()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ბ()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㲝()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ()F

    move-result v0

    return v0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ()I

    move-result v0

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㨃:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ڈ:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, L㺴/㚬/உ/䂻/ᾦ/䂻;->உ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->ᭊ(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->ཇ(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, L㺴/㚬/உ/䂻/ᾦ/உ;->ڈ(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->㲝(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ม()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㖆()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᘚ()Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ()Z

    move-result p2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$㚬;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$㚬;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    invoke-virtual {p1}, L㚬/ಫ/உ/உ;->ಫ()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;->㺴:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-boolean p1, p1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;->ḓ:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$䂻;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$䂻;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$ℓ;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;->㺴:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ڈ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$ℓ;->ḓ:Z

    return-object v1
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Ᏼ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->䆀()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/ℓ/ḓ/உ;->䂻(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ർ()V

    :cond_1
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᆻ:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-instance v1, L㚬/䂻/ბ/ㄬ;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    sget v2, L㺴/㚬/உ/䂻/䆀;->ม:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㨃:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㺴(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㟘()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㲧(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᆻ:Z

    :cond_2
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    if-eq v0, p1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᆻ:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㟘()V

    :cond_1
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㧦:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㧦:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ཇ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ཇ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㹖:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㹖:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἥ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἥ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->㭢(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconMode(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()L㺴/㚬/உ/䂻/㖆/ḓ;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()L㺴/㚬/உ/䂻/㖆/ḓ;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㖆/ḓ;->உ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄬ(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current box background mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᘚ:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ỷ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᘚ:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->䅚(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⵦ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⵦ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᭊ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㟘:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㟘:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣝ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ש()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ()Z

    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㢏()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ർ(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㞘()V

    :goto_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㫏(Z)V

    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㢏()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲊:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ಋ(I)V

    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ᾦ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㨃()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㨃()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㖆(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ש(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㰫(Z)V

    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ڈ(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->क:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㽛()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㰫(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㽛()V

    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ש(Landroid/content/res/ColorStateList;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⵦ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᭊ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㟘:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣝ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㧦()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Խ:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ỷ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Խ:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->䅚(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᱹ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᱹ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㥁:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㧦()V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ർ:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ർ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㖆:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㧦()V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㥁()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ()Z

    :cond_1
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$ḓ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㨃:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㨃:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㟘(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ᰘ(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final Խ()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ἂ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->㠭(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public ש()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㚬:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ڈ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ಇ(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->Ổ(ZZ)V

    return-void
.end method

.method public final ಋ(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final ಫ(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {v0, p3}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {v0, p5}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eq p2, v0, :cond_3

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final ർ()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㹖()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Խ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㽛()V

    :cond_0
    return-void
.end method

.method public ග()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἃ:I

    :goto_4
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಋ:I

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ()I

    move-result v4

    goto :goto_4

    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ග:I

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Ổ:I

    goto :goto_4

    :cond_9
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಇ:I

    goto :goto_4

    :goto_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()L㺴/㚬/உ/䂻/㖆/ḓ;

    move-result-object v4

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->ⵦ(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->㢏()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    if-nez v3, :cond_c

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㫏:I

    goto :goto_7

    :cond_d
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄬ:I

    :goto_7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲧:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-ne v0, v2, :cond_10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㠭:I

    :goto_8
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    goto :goto_9

    :cond_e
    if-eqz v3, :cond_f

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䋡:I

    goto :goto_8

    :cond_f
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Ᏼ:I

    goto :goto_8

    :cond_10
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->䆀()V

    :cond_11
    :goto_a
    return-void
.end method

.method public final ม()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ბ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    instance-of v0, v0, L㺴/㚬/உ/䂻/㖆/㚬;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ཇ(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㰫:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    :goto_1
    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    return-object v1

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㞘()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ม:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final ბ(Landroid/graphics/Rect;F)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᱹ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final ᆻ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಋ:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final ᓭ(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p3

    float-to-int p1, p1

    return p1

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final ᘚ()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final ᣑ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㧦:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㹖:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->㮕(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἥ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ཇ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public ᣝ(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->㧦(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-static {v1, v2}, L㚬/ℓ/ἥ/㭲;->Ᏼ(Landroid/view/View;I)V

    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    if-le p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    invoke-static {v1, v4, p1, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ()V

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-static {v1, v3}, L㚬/ℓ/ἥ/㭲;->Ᏼ(Landroid/view/View;I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, L㺴/㚬/உ/䂻/ㄏ;->㚬:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ℓ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eq v0, p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    :cond_4
    return-void
.end method

.method public final ᣦ()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㰫()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㥁()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, L㚬/ℓ/ἥ/ᆻ;->உ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-static {v0}, L㚬/ℓ/ཇ/ㄏ;->உ(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    aget-object v8, v0, v5

    aget-object v9, v0, v4

    aget-object v0, v0, v3

    invoke-static {v6, v7, v8, v9, v0}, L㚬/ℓ/ཇ/ㄏ;->ㄏ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-static {v0}, L㚬/ℓ/ཇ/ㄏ;->உ(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    aget-object v7, v0, v5

    aget-object v8, v0, v4

    aget-object v0, v0, v3

    invoke-static {v6, v2, v7, v8, v0}, L㚬/ℓ/ཇ/ㄏ;->ㄏ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭢:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, L㚬/ℓ/ἥ/ᆻ;->䂻(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-static {v2}, L㚬/ℓ/ཇ/ㄏ;->உ(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v6, v2, v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_5

    aget-object v0, v2, v4

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v4, v2, v5

    aget-object v2, v2, v3

    invoke-static {v0, v1, v4, v7, v2}, L㚬/ℓ/ཇ/ㄏ;->ㄏ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    move v5, v0

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-static {v6}, L㚬/ℓ/ཇ/ㄏ;->உ(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v4, v6, v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    if-ne v4, v7, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v4, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣑ:Landroid/graphics/drawable/Drawable;

    aget-object v3, v6, v3

    invoke-static {v0, v1, v4, v7, v3}, L㚬/ℓ/ཇ/ㄏ;->ㄏ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    move v5, v0

    :goto_2
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᇿ:Landroid/graphics/drawable/Drawable;

    :goto_3
    move v0, v5

    :cond_8
    return v0
.end method

.method public final ᭊ(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㫏:I

    sub-int v2, v1, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public ᰘ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲝:Z

    return v0
.end method

.method public final ᱹ()Z
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public ḓ(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㞘()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    sget-object v1, L㺴/㚬/உ/䂻/㹖/உ;->䂻:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$㺴;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$㺴;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㞘()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final ḙ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲧:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಋ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ổ(ZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v3}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v5, v4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ש(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣦ:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἃ:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ש(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἃ:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㖆/䆀;->ᓭ()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ש(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ש(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㽛:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    if-nez p2, :cond_b

    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->㢏(Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final ἂ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ἥ()I
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v0, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, L㺴/㚬/உ/䂻/㖪/உ;->㺴(Landroid/view/View;II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㖪/உ;->ḓ(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final ᾦ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->क:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ḓ(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ỷ(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ม()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    check-cast p1, L㺴/㚬/உ/䂻/㖆/㚬;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㖆/㚬;->Ᏼ()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㖪()V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    return-void
.end method

.method public final ℓ(Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㖪:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v1

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final ⵦ(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ()I

    move-result v0

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ཇ(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ()V

    :goto_0
    return-void
.end method

.method public final ㄏ()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㮕:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᭊ:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⵦ:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᣝ:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->㟘:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->ಫ(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final ㄬ(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἂ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$ᆻ;

    invoke-interface {v1, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$ᆻ;->உ(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final 㖆()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ม()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ש:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ℓ(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    check-cast v1, L㺴/㚬/உ/䂻/㖆/㚬;

    invoke-virtual {v1, v0}, L㺴/㚬/உ/䂻/㖆/㚬;->क(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final 㖪()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ม()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    check-cast v0, L㺴/㚬/உ/䂻/㖆/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/㚬;->ἃ()V

    :cond_0
    return-void
.end method

.method public 㚬(Lcom/google/android/material/textfield/TextInputLayout$䆀;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Ԁ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$䆀;->உ(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    return-void
.end method

.method public final 㞘()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ()F

    move-result v0

    goto :goto_0
.end method

.method public final 㟘()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ᣝ(I)V

    :cond_1
    return-void
.end method

.method public final 㢏(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⷜ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->क:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ḓ(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ỷ(F)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆍:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ม()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㖆()V

    :cond_2
    return-void
.end method

.method public 㥁()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㧦()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᰘ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㥁:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᱹ:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->㖆:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ർ:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->ಫ(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public 㨃()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ม()Z

    move-result v0

    return v0
.end method

.method public final 㫏(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲧:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final 㭲()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㮕(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2}, L㚬/ℓ/ཇ/ㄏ;->ཇ(Landroid/widget/TextView;I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    sget p2, L㺴/㚬/உ/䂻/ಫ;->உ:I

    invoke-static {p1, p2}, L㚬/ℓ/ཇ/ㄏ;->ཇ(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, L㺴/㚬/உ/䂻/㚬;->உ:I

    invoke-static {p2, v0}, L㚬/ℓ/ḓ/உ;->䂻(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final 㰫()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㲊()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, L㚬/䂻/ბ/㰫;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/㖆/䆀;->㧦()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->䆀:L㺴/㚬/உ/䂻/㖆/䆀;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ()I

    move-result v1

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, L㚬/䂻/ბ/ಫ;->ḓ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ㄏ:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಫ:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㚬(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final 㲝(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㰫:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/உ;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲝()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ბ(Landroid/graphics/Rect;F)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final 㲧()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Ԁ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$䆀;

    invoke-interface {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$䆀;->உ(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final 㹖()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᓭ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    instance-of v0, v0, L㺴/㚬/உ/䂻/㖆/㚬;

    if-nez v0, :cond_0

    new-instance v0, L㺴/㚬/உ/䂻/㖆/㚬;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v0, v2}, L㺴/㚬/உ/䂻/㖆/㚬;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    goto :goto_0

    :cond_0
    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v0, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    goto :goto_2

    :cond_3
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    :goto_1
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㭲:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    :goto_2
    return-void
.end method

.method public 㺴(Lcom/google/android/material/textfield/TextInputLayout$ᆻ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ἂ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final 㽛()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㢏:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䂻:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㞘()I

    move-result v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->䂻:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final 䆀()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ḙ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->㭲()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㲧:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ಋ:I

    invoke-virtual {v0, v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲊(FI)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ἥ()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᾦ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->㞘:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ỷ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->㺴:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᆻ()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.class public final L㺴/㚬/உ/䂻/㢏/ㄏ;
.super L㚬/㧦/㺴/㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u39e6/\u3eb4/\u3eb4;"
    }
.end annotation


# static fields
.field public static final ḙ:Ljava/lang/Object;

.field public static final 㞘:Ljava/lang/Object;

.field public static final 㭲:Ljava/lang/Object;


# instance fields
.field public ಫ:L㺴/㚬/உ/䂻/㢏/ℓ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u2113<",
            "TS;>;"
        }
    .end annotation
.end field

.field public ཇ:Landroid/widget/TextView;

.field public ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TS;>;"
        }
    .end annotation
.end field

.field public ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

.field public final ḓ:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field public ἥ:Z

.field public ℓ:L㺴/㚬/உ/䂻/㢏/ბ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u10d1<",
            "TS;>;"
        }
    .end annotation
.end field

.field public ㄏ:L㺴/㚬/உ/䂻/㢏/உ;

.field public final 㚬:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public 㧦:I

.field public 㲝:Landroid/widget/Button;

.field public 㹖:Ljava/lang/CharSequence;

.field public final 㺴:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0cab<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field public 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㞘:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㭲:Ljava/lang/Object;

    const-string v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḙ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/㧦/㺴/㺴;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->䂻:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㚬:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㺴:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḓ:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static synthetic உ(L㺴/㚬/உ/䂻/㢏/ㄏ;)Ljava/util/LinkedHashSet;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->䂻:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static ಫ(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, L㺴/㚬/உ/䂻/㺴;->㭲:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, L㺴/㚬/உ/䂻/㺴;->ḙ:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, L㺴/㚬/உ/䂻/㺴;->㞘:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, L㺴/㚬/உ/䂻/㺴;->ཇ:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, L㺴/㚬/உ/䂻/㢏/ἥ;->䆀:I

    sget v3, L㺴/㚬/உ/䂻/㺴;->㹖:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v3, v3, v2

    add-int/lit8 v2, v2, -0x1

    sget v4, L㺴/㚬/உ/䂻/㺴;->㲝:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int v2, v2, v4

    add-int/2addr v3, v2

    sget v2, L㺴/㚬/உ/䂻/㺴;->ಫ:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0
.end method

.method public static ბ(Landroid/content/Context;)Z
    .locals 4

    sget v0, L㺴/㚬/உ/䂻/䂻;->ბ:I

    const-class v1, L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, L㺴/㚬/உ/䂻/ש/䂻;->㚬(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101020d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static synthetic ᆻ(L㺴/㚬/உ/䂻/㢏/ㄏ;Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḙ(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/㢏/ㄏ;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic ℓ(L㺴/㚬/உ/䂻/㢏/ㄏ;)V
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝()V

    return-void
.end method

.method public static ㄏ(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, L㺴/㚬/உ/䂻/ḓ;->䂻:I

    invoke-static {p0, v2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    sget v2, L㺴/㚬/உ/䂻/ḓ;->㚬:I

    invoke-static {p0, v2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static synthetic 㚬(L㺴/㚬/உ/䂻/㢏/ㄏ;)V
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㭲()V

    return-void
.end method

.method public static 㞘()J
    .locals 2

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㹖;->㭲()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget-wide v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    return-wide v0
.end method

.method public static 㹖(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, L㺴/㚬/உ/䂻/㺴;->㧦:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㹖;->㭲()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v1

    iget v1, v1, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    sget v2, L㺴/㚬/உ/䂻/㺴;->ἥ:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, L㺴/㚬/உ/䂻/㺴;->ბ:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/㢏/ㄏ;)L㺴/㚬/உ/䂻/㢏/㺴;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    return-object p0
.end method

.method public static synthetic 䂻(L㺴/㚬/உ/䂻/㢏/ㄏ;)Ljava/util/LinkedHashSet;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㚬:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static synthetic 䆀(L㺴/㚬/உ/䂻/㢏/ㄏ;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㺴:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, L㚬/㧦/㺴/㺴;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, L㚬/㧦/㺴/㺴;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->䆀:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/㺴;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/உ;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ㄏ:L㺴/㚬/உ/䂻/㢏/உ;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㧦:I

    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㹖:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ཇ(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ἥ:Z

    sget v1, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    const-class v2, L㺴/㚬/உ/䂻/㢏/ㄏ;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, L㺴/㚬/உ/䂻/ש/䂻;->㚬(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    new-instance v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    sget v3, L㺴/㚬/உ/䂻/䂻;->ბ:I

    sget v4, L㺴/㚬/உ/䂻/ಫ;->ㄏ:I

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v2, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭢(Landroid/content/Context;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->㞘(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-boolean p3, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ἥ:Z

    if-eqz p3, :cond_0

    sget p3, L㺴/㚬/உ/䂻/ℓ;->㧦:I

    goto :goto_0

    :cond_0
    sget p3, L㺴/㚬/உ/䂻/ℓ;->ಫ:I

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ἥ:Z

    if-eqz p3, :cond_1

    sget p3, L㺴/㚬/உ/䂻/䆀;->㹖:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㹖(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    sget p3, L㺴/㚬/உ/䂻/䆀;->ἥ:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget v0, L㺴/㚬/உ/䂻/䆀;->㹖:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㹖(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ಫ(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    sget p3, L㺴/㚬/உ/䂻/䆀;->㞘:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ཇ:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, L㚬/ℓ/ἥ/㭲;->Ᏼ(Landroid/view/View;I)V

    sget p3, L㺴/㚬/உ/䂻/䆀;->㭲:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    sget p3, L㺴/㚬/உ/䂻/䆀;->ḙ:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㹖:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㧦:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ(Landroid/content/Context;)V

    sget p2, L㺴/㚬/உ/䂻/䆀;->䂻:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-interface {p2}, L㺴/㚬/உ/䂻/㢏/㺴;->䆀()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    sget-object p3, L㺴/㚬/உ/䂻/㢏/ㄏ;->㞘:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝:Landroid/widget/Button;

    new-instance p3, L㺴/㚬/உ/䂻/㢏/ㄏ$உ;

    invoke-direct {p3, p0}, L㺴/㚬/உ/䂻/㢏/ㄏ$உ;-><init>(L㺴/㚬/உ/䂻/㢏/ㄏ;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, L㺴/㚬/உ/䂻/䆀;->உ:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget-object p3, L㺴/㚬/உ/䂻/㢏/ㄏ;->㭲:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance p3, L㺴/㚬/உ/䂻/㢏/ㄏ$䂻;

    invoke-direct {p3, p0}, L㺴/㚬/உ/䂻/㢏/ㄏ$䂻;-><init>(L㺴/㚬/உ/䂻/㢏/ㄏ;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḓ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-super {p0, p1}, L㚬/㧦/㺴/㺴;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/㧦/㺴/㺴;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->䆀:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, L㺴/㚬/உ/䂻/㢏/உ$䂻;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ㄏ:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/㢏/உ$䂻;-><init>(L㺴/㚬/உ/䂻/㢏/உ;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ಫ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ཇ()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ಫ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ཇ()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v1

    iget-wide v1, v1, L㺴/㚬/உ/䂻/㢏/㹖;->ℓ:J

    invoke-virtual {v0, v1, v2}, L㺴/㚬/உ/䂻/㢏/உ$䂻;->䂻(J)L㺴/㚬/உ/䂻/㢏/உ$䂻;

    :cond_0
    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ$䂻;->உ()L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object v0

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㧦:I

    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->㹖:Ljava/lang/CharSequence;

    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 9

    invoke-super {p0}, L㚬/㧦/㺴/㺴;->onStart()V

    invoke-virtual {p0}, L㚬/㧦/㺴/㺴;->requireDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ἥ:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/㺴;->ᓭ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, L㺴/㚬/உ/䂻/ม/உ;

    invoke-virtual {p0}, L㚬/㧦/㺴/㺴;->requireDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, L㺴/㚬/உ/䂻/ม/உ;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㲝()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ℓ:L㺴/㚬/உ/䂻/㢏/ბ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ბ;->䂻()V

    invoke-super {p0}, L㚬/㧦/㺴/㺴;->onStop()V

    return-void
.end method

.method public final ཇ(Landroid/content/Context;)I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->䆀:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/㢏/㺴;->㚬(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final ᓭ(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v1, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḙ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ㄏ(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ἥ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ḙ(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, L㺴/㚬/உ/䂻/㢏/ㄏ$㺴;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㢏/ㄏ$㺴;-><init>(L㺴/㚬/உ/䂻/㢏/ㄏ;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final ḙ(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v0, :cond_0

    sget v0, L㺴/㚬/உ/䂻/ㄏ;->㧦:I

    goto :goto_0

    :cond_0
    sget v0, L㺴/㚬/உ/䂻/ㄏ;->ἥ:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ἥ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/㢏/㺴;->உ()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public 㧦()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/㢏/㺴;->䂻(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final 㭲()V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㧦()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ཇ:Landroid/widget/TextView;

    sget v2, L㺴/㚬/உ/䂻/ㄏ;->ℓ:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ཇ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final 㲝()V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ཇ(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ㄏ:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-static {v0, v1, v2}, L㺴/㚬/உ/䂻/㢏/ℓ;->㞘(L㺴/㚬/உ/䂻/㢏/㺴;IL㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/ℓ;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ಫ:L㺴/㚬/உ/䂻/㢏/ℓ;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᓭ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ᆻ:L㺴/㚬/உ/䂻/㢏/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ㄏ:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㢏/㧦;->㚬(L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/㧦;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ಫ:L㺴/㚬/உ/䂻/㢏/ℓ;

    :goto_0
    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ℓ:L㺴/㚬/உ/䂻/㢏/ბ;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ㄏ;->㭲()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ἥ()L㚬/㧦/㺴/㢏;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/䆀;->㹖:I

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ℓ:L㺴/㚬/உ/䂻/㢏/ბ;

    invoke-virtual {v0, v1, v2}, L㚬/㧦/㺴/㢏;->ἥ(ILandroidx/fragment/app/Fragment;)L㚬/㧦/㺴/㢏;

    invoke-virtual {v0}, L㚬/㧦/㺴/㢏;->ℓ()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ㄏ;->ℓ:L㺴/㚬/உ/䂻/㢏/ბ;

    new-instance v1, L㺴/㚬/உ/䂻/㢏/ㄏ$㚬;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㢏/ㄏ$㚬;-><init>(L㺴/㚬/உ/䂻/㢏/ㄏ;)V

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/㢏/ბ;->உ(L㺴/㚬/உ/䂻/㢏/ᓭ;)Z

    return-void
.end method

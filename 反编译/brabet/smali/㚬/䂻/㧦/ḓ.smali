.class public L㚬/䂻/㧦/ḓ;
.super L㚬/䂻/㧦/㺴;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ᆻ$உ;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/㧦/ḓ$㧦;,
        L㚬/䂻/㧦/ḓ$ἥ;,
        L㚬/䂻/㧦/ḓ$㹖;,
        L㚬/䂻/㧦/ḓ$ಫ;,
        L㚬/䂻/㧦/ḓ$ཇ;,
        L㚬/䂻/㧦/ḓ$ᓭ;,
        L㚬/䂻/㧦/ḓ$ℓ;,
        L㚬/䂻/㧦/ḓ$ბ;,
        L㚬/䂻/㧦/ḓ$ㄏ;
    }
.end annotation


# static fields
.field public static final ಇ:Z

.field public static ග:Z

.field public static final Ᏼ:Z

.field public static final Ổ:[I

.field public static final 㽛:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Ԁ:Z

.field public Խ:Z

.field public ש:Z

.field public ڈ:Z

.field public ಋ:Z

.field public ಫ:L㚬/䂻/㧦/உ;

.field public ർ:Z

.field public ม:Landroid/view/ViewGroup;

.field public ཇ:L㚬/䂻/㧦/ḓ$ℓ;

.field public ბ:L㚬/䂻/ᓭ/䂻;

.field public ᆻ:Landroid/view/Window;

.field public final ᇿ:Ljava/lang/Runnable;

.field public ᓭ:L㚬/䂻/㧦/ḓ$ბ;

.field public ᘚ:Landroid/graphics/Rect;

.field public ᣑ:Z

.field public ᣝ:I

.field public ᣦ:Landroidx/appcompat/app/AppCompatViewInflater;

.field public ᭊ:L㚬/䂻/㧦/ḓ$㹖;

.field public ᰘ:Z

.field public ᱹ:[L㚬/䂻/㧦/ḓ$ᓭ;

.field public final ḓ:Ljava/lang/Object;

.field public ḙ:L㚬/ℓ/ἥ/ม;

.field public ỷ:I

.field public ἂ:Z

.field public ἥ:L㚬/䂻/ბ/ᾦ;

.field public ᾦ:Z

.field public ℓ:L㚬/䂻/㧦/ḓ$ಫ;

.field public ⵦ:L㚬/䂻/㧦/ḓ$㹖;

.field public final ㄏ:L㚬/䂻/㧦/㚬;

.field public ㄬ:Landroid/view/View;

.field public 㖆:Z

.field public 㖪:Z

.field public 㞘:Landroid/widget/PopupWindow;

.field public 㟘:Z

.field public 㢏:Z

.field public 㥁:L㚬/䂻/㧦/ḓ$ᓭ;

.field public 㧦:Landroid/view/MenuInflater;

.field public 㨃:Z

.field public 㫏:Z

.field public 㭢:Z

.field public 㭲:Ljava/lang/Runnable;

.field public 㮕:Z

.field public 㰫:Z

.field public 㲊:Landroid/graphics/Rect;

.field public 㲝:Landroidx/appcompat/widget/ActionBarContextView;

.field public 㲧:Landroid/widget/TextView;

.field public 㹖:Ljava/lang/CharSequence;

.field public 䅚:I

.field public final 䆀:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    sput-object v0, L㚬/䂻/㧦/ḓ;->㽛:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sput-boolean v4, L㚬/䂻/㧦/ḓ;->ಇ:Z

    new-array v5, v3, [I

    const v6, 0x1010054

    aput v6, v5, v2

    sput-object v5, L㚬/䂻/㧦/ḓ;->Ổ:[I

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, L㚬/䂻/㧦/ḓ;->Ᏼ:Z

    if-eqz v4, :cond_2

    sget-boolean v0, L㚬/䂻/㧦/ḓ;->ග:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, L㚬/䂻/㧦/ḓ$உ;

    invoke-direct {v1, v0}, L㚬/䂻/㧦/ḓ$உ;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v3, L㚬/䂻/㧦/ḓ;->ග:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;L㚬/䂻/㧦/㚬;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p1}, L㚬/䂻/㧦/ḓ;-><init>(Landroid/content/Context;Landroid/view/Window;L㚬/䂻/㧦/㚬;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;L㚬/䂻/㧦/㚬;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, L㚬/䂻/㧦/ḓ;-><init>(Landroid/content/Context;Landroid/view/Window;L㚬/䂻/㧦/㚬;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;L㚬/䂻/㧦/㚬;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, L㚬/䂻/㧦/㺴;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㖪:Z

    const/16 v0, -0x64

    iput v0, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    new-instance v1, L㚬/䂻/㧦/ḓ$䂻;

    invoke-direct {v1, p0}, L㚬/䂻/㧦/ḓ$䂻;-><init>(L㚬/䂻/㧦/ḓ;)V

    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->ᇿ:Ljava/lang/Runnable;

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    iput-object p3, p0, L㚬/䂻/㧦/ḓ;->ㄏ:L㚬/䂻/㧦/㚬;

    iput-object p4, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of p1, p4, Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ἴ()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->ḓ()L㚬/䂻/㧦/㺴;

    move-result-object p1

    invoke-virtual {p1}, L㚬/䂻/㧦/㺴;->ㄏ()I

    move-result p1

    iput p1, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    :cond_0
    iget p1, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    if-ne p1, v0, :cond_1

    sget-object p1, L㚬/䂻/㧦/ḓ;->㽛:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, L㚬/䂻/㧦/ḓ;->ᱹ(Landroid/view/Window;)V

    :cond_2
    invoke-static {}, L㚬/䂻/ბ/ಫ;->ℓ()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/䂻/㧦/ḓ;->䅚(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, L㚬/䂻/㧦/ḓ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ϣ(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p2}, L㚬/䂻/㧦/ḓ;->ᨧ(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    iget-boolean p1, p0, L㚬/䂻/㧦/ḓ;->ർ:Z

    iput-boolean v2, p0, L㚬/䂻/㧦/ḓ;->ർ:Z

    invoke-virtual {p0, v2, v2}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean v0, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0, p2, v1}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->क()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public final Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z
    .locals 8

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    :cond_3
    iget v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    if-eqz v3, :cond_5

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v4, :cond_6

    invoke-interface {v4}, L㚬/䂻/ბ/ᾦ;->䆀()V

    :cond_6
    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    :cond_7
    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v6, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㞘:Z

    if-eqz v6, :cond_f

    :cond_8
    if-nez v4, :cond_a

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->㠭(L㚬/䂻/㧦/ḓ$ᓭ;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v4, :cond_c

    iget-object v6, p0, L㚬/䂻/㧦/ḓ;->ཇ:L㚬/䂻/㧦/ḓ$ℓ;

    if-nez v6, :cond_b

    new-instance v6, L㚬/䂻/㧦/ḓ$ℓ;

    invoke-direct {v6, p0}, L㚬/䂻/㧦/ḓ$ℓ;-><init>(L㚬/䂻/㧦/ḓ;)V

    iput-object v6, p0, L㚬/䂻/㧦/ḓ;->ཇ:L㚬/䂻/㧦/ḓ$ℓ;

    :cond_b
    iget-object v6, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v7, p0, L㚬/䂻/㧦/ḓ;->ཇ:L㚬/䂻/㧦/ḓ$ℓ;

    invoke-interface {v4, v6, v7}, L㚬/䂻/ბ/ᾦ;->உ(Landroid/view/Menu;L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    :cond_c
    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    iget-object v6, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p1, v5}, L㚬/䂻/㧦/ḓ$ᓭ;->㚬(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    if-eqz v3, :cond_d

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz p1, :cond_d

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ཇ:L㚬/䂻/㧦/ḓ$ℓ;

    invoke-interface {p1, v5, p2}, L㚬/䂻/ბ/ᾦ;->உ(Landroid/view/Menu;L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    :cond_d
    return v1

    :cond_e
    iput-boolean v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㞘:Z

    :cond_f
    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㭲:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    iget-object v6, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v6, v4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䅚(Landroid/os/Bundle;)V

    iput-object v5, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㭲:Landroid/os/Bundle;

    :cond_10
    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    iget-object v6, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz p2, :cond_11

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ཇ:L㚬/䂻/㧦/ḓ$ℓ;

    invoke-interface {p2, v5, v0}, L㚬/䂻/ბ/ᾦ;->உ(Landroid/view/Menu;L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    :cond_11
    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_13
    const/4 p2, -0x1

    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_14

    const/4 p2, 0x1

    goto :goto_3

    :cond_14
    const/4 p2, 0x0

    :goto_3
    iput-boolean p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ბ:Z

    iget-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->setQwertyMode(Z)V

    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    :cond_15
    iput-boolean v2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    iput-boolean v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ཇ:Z

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    return v2
.end method

.method public Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/ᾦ;->㚬()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->㖆(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    invoke-virtual {p0, p2, p1, v1}, L㚬/䂻/㧦/ḓ;->ർ(IL㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    iput-boolean p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ཇ:Z

    iput-boolean p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    iput-object v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㲝:Z

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    :cond_2
    return-void
.end method

.method public Խ(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    return-void
.end method

.method public ש()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->㨃(Z)Z

    move-result v0

    return v0
.end method

.method public ڈ(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/㧦/ḓ;->䅚:I

    return-void
.end method

.method public ޒ(I)I
    .locals 8

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->㲊:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, L㚬/䂻/㧦/ḓ;->㲊:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, L㚬/䂻/㧦/ḓ;->ᘚ:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->㲊:Landroid/graphics/Rect;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ᘚ:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, L㚬/䂻/ბ/㽛;->உ(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, L㚬/䂻/㚬;->உ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-boolean v4, p0, L㚬/䂻/㧦/ḓ;->㰫:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    iget-object v3, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_5
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ㄬ:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public क()Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/䂻;->㚬()V

    return v1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->ℓ()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ध(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public ਬ(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/உ;->ㄏ(Z)V

    :cond_0
    return-void
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->ᇿ(Landroid/view/Menu;)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ಇ()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public ಋ(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public ಫ()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㧦:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->Ổ()V

    new-instance v0, L㚬/䂻/ᓭ/ᆻ;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, L㚬/䂻/㧦/உ;->㧦()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, L㚬/䂻/ᓭ/ᆻ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->㧦:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㧦:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public ർ(IL㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᱹ:[L㚬/䂻/㧦/ḓ$ᓭ;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez p2, :cond_3

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p2}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final ග(L㚬/䂻/㧦/ḓ$ᓭ;)Z
    .locals 3

    iget-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    return v1

    :cond_0
    iget-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᓭ:L㚬/䂻/㧦/ḓ$ბ;

    if-nez v0, :cond_2

    new-instance v0, L㚬/䂻/㧦/ḓ$ბ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ḓ$ბ;-><init>(L㚬/䂻/㧦/ḓ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ᓭ:L㚬/䂻/㧦/ḓ$ბ;

    :cond_2
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᓭ:L㚬/䂻/㧦/ḓ$ბ;

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/ḓ$ᓭ;->உ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)L㚬/䂻/ᓭ/ಫ/ཇ;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public ม()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Խ:Z

    invoke-static {p0}, L㚬/䂻/㧦/㺴;->ᓭ(L㚬/䂻/㧦/㺴;)V

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, L㚬/䂻/㧦/உ;->㭲(Z)V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㭢()V

    :cond_1
    return-void
.end method

.method public ბ(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㢏:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/உ;->ἥ(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, L㚬/䂻/ბ/ಫ;->䂻()L㚬/䂻/ბ/ಫ;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ಫ;->ᆻ(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->㨃(Z)Z

    return-void
.end method

.method public ᆻ(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ᇿ(Landroid/view/Menu;)L㚬/䂻/㧦/ḓ$ᓭ;
    .locals 5

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᱹ:[L㚬/䂻/㧦/ḓ$ᓭ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ፖ()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㢏:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Ꭿ(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/உ;->ㄏ(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    iget-boolean v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Ᏼ(L㚬/䂻/㧦/ḓ$ᓭ;)Z
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᣑ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/ḓ$ᓭ;->㺴(Landroid/content/Context;)V

    new-instance v0, L㚬/䂻/㧦/ḓ$ཇ;

    iget-object v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㹖:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, L㚬/䂻/㧦/ḓ$ཇ;-><init>(L㚬/䂻/㧦/ḓ;Landroid/content/Context;)V

    iput-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㚬:I

    const/4 p1, 0x1

    return p1
.end method

.method public final ᓟ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㢏:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ᗫ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 4

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->ᆻ()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->䂻()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {v2}, L㚬/䂻/ბ/ᾦ;->㚬()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p2}, L㚬/䂻/ბ/ᾦ;->㺴()Z

    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez p2, :cond_4

    invoke-virtual {p0, v1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p2

    iget-object p2, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->㟘:Z

    if-eqz p2, :cond_3

    iget p2, p0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ᇿ:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ᇿ:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, v1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p2

    iget-object v0, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_4

    iget-boolean v2, p2, L㚬/䂻/㧦/ḓ$ᓭ;->㞘:Z

    if-nez v2, :cond_4

    iget-object v2, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    invoke-interface {p1, v1, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p2, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->ḓ()Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, v1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    iput-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㲝:Z

    invoke-virtual {p0, p1, v1}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/㧦/ḓ;->ᶠ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public ᗼ(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/உ;->ᓭ(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, v1}, L㚬/䂻/㧦/ḓ;->㱱(L㚬/䂻/㧦/ḓ$ᓭ;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    if-eqz p1, :cond_1

    iput-boolean v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ཇ:Z

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㥁:L㚬/䂻/㧦/ḓ$ᓭ;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0, v0, v1}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, p1, v2, p2, v1}, L㚬/䂻/㧦/ḓ;->㱱(L㚬/䂻/㧦/ḓ$ᓭ;ILandroid/view/KeyEvent;I)Z

    move-result p2

    iput-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final ᘚ()L㚬/䂻/㧦/ḓ$㹖;
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ⵦ:L㚬/䂻/㧦/ḓ$㹖;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/㧦/ḓ$ἥ;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {v1}, L㚬/䂻/㧦/ㄏ;->உ(Landroid/content/Context;)L㚬/䂻/㧦/ㄏ;

    move-result-object v1

    invoke-direct {v0, p0, v1}, L㚬/䂻/㧦/ḓ$ἥ;-><init>(L㚬/䂻/㧦/ḓ;L㚬/䂻/㧦/ㄏ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ⵦ:L㚬/䂻/㧦/ḓ$㹖;

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ⵦ:L㚬/䂻/㧦/ḓ$㹖;

    return-object v0
.end method

.method public final ᙏ()L㚬/䂻/㧦/உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    return-object v0
.end method

.method public final ᣑ()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->㧦()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final ᣝ()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->ᱹ(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;
    .locals 3

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ᱹ:[L㚬/䂻/㧦/ḓ$ᓭ;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [L㚬/䂻/㧦/ḓ$ᓭ;

    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ᱹ:[L㚬/䂻/㧦/ḓ$ᓭ;

    move-object p2, v0

    :cond_2
    aget-object v0, p2, p1

    if-nez v0, :cond_3

    new-instance v0, L㚬/䂻/㧦/ḓ$ᓭ;

    invoke-direct {v0, p1}, L㚬/䂻/㧦/ḓ$ᓭ;-><init>(I)V

    aput-object v0, p2, p1

    :cond_3
    return-object v0
.end method

.method public final ᨧ(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v2

    if-nez p1, :cond_2

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz p1, :cond_2

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->ᆻ()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->㚬()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, v2, p2}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->ḓ()Z

    move-result v0

    goto :goto_2

    :cond_1
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {p1}, L㚬/䂻/ბ/ᾦ;->㺴()Z

    move-result v0

    goto :goto_2

    :cond_2
    iget-boolean p1, v2, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-nez p1, :cond_6

    iget-boolean v3, v2, L㚬/䂻/㧦/ḓ$ᓭ;->ཇ:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, v2, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v2, L㚬/䂻/㧦/ḓ$ᓭ;->㞘:Z

    if-eqz p1, :cond_4

    iput-boolean v1, v2, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    invoke-virtual {p0, v2, p2}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, v2, p2}, L㚬/䂻/㧦/ḓ;->ᶠ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v0}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    move v0, p1

    :goto_2
    if-eqz v0, :cond_8

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    const-string p1, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v0
.end method

.method public ᭊ()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ม;->䂻()V

    :cond_0
    return-void
.end method

.method public final ᰘ()V
    .locals 5

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->䂻(IIII)V

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    sget-object v2, L㚬/䂻/ಫ;->ᶠ:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, L㚬/䂻/ಫ;->Ⱝ:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, L㚬/䂻/ಫ;->㜱:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, L㚬/䂻/ಫ;->ፖ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget v2, L㚬/䂻/ಫ;->ἴ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget v2, L㚬/䂻/ಫ;->ᵁ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget v2, L㚬/䂻/ಫ;->ᴇ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final ᱹ(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, L㚬/䂻/㧦/ḓ$ಫ;

    if-nez v2, :cond_1

    new-instance v1, L㚬/䂻/㧦/ḓ$ಫ;

    invoke-direct {v1, p0, v0}, L㚬/䂻/㧦/ḓ$ಫ;-><init>(L㚬/䂻/㧦/ḓ;Landroid/view/Window$Callback;)V

    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, L㚬/䂻/㧦/ḓ;->Ổ:[I

    invoke-static {v0, v1, v2}, L㚬/䂻/ბ/ᣝ;->ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/ᣝ;->ℓ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᴇ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
    .locals 7

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᭊ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/䂻;->㚬()V

    :cond_0
    instance-of v0, p1, L㚬/䂻/㧦/ḓ$ㄏ;

    if-nez v0, :cond_1

    new-instance v0, L㚬/䂻/㧦/ḓ$ㄏ;

    invoke-direct {v0, p0, p1}, L㚬/䂻/㧦/ḓ$ㄏ;-><init>(L㚬/䂻/㧦/ḓ;L㚬/䂻/ᓭ/䂻$உ;)V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ㄏ:L㚬/䂻/㧦/㚬;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez v2, :cond_2

    :try_start_0
    invoke-interface {v0, p1}, L㚬/䂻/㧦/㚬;->㺴(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ש:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, L㚬/䂻/உ;->䆀:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, L㚬/䂻/ᓭ/㺴;

    iget-object v6, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, L㚬/䂻/உ;->ㄏ:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, L㚬/ℓ/ཇ/ℓ;->䂻(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    iget-object v6, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, L㚬/䂻/உ;->䂻:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, L㚬/䂻/㧦/ḓ$䆀;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ḓ$䆀;-><init>(L㚬/䂻/㧦/ḓ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->㭲:Ljava/lang/Runnable;

    goto :goto_2

    :cond_5
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    sget v4, L㚬/䂻/䆀;->ℓ:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᣑ()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->உ()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_6
    :goto_2
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᭊ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->㧦()V

    new-instance v0, L㚬/䂻/ᓭ/ḓ;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-direct {v0, v4, v5, p1, v3}, L㚬/䂻/ᓭ/ḓ;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;L㚬/䂻/ᓭ/䂻$உ;Z)V

    invoke-virtual {v0}, L㚬/䂻/ᓭ/䂻;->ḓ()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, L㚬/䂻/ᓭ/䂻$உ;->㚬(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, L㚬/䂻/ᓭ/䂻;->㧦()V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->ℓ(L㚬/䂻/ᓭ/䂻;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᓟ()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object p1

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    new-instance v0, L㚬/䂻/㧦/ḓ$ᆻ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ḓ$ᆻ;-><init>(L㚬/䂻/㧦/ḓ;)V

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    goto :goto_4

    :cond_8
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    :cond_9
    :goto_4
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_b

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㭲:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    :cond_b
    :goto_5
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    if-eqz p1, :cond_c

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ㄏ:L㚬/䂻/㧦/㚬;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, L㚬/䂻/㧦/㚬;->䂻(L㚬/䂻/ᓭ/䂻;)V

    :cond_c
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    return-object p1
.end method

.method public ᵁ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/䂻;->㚬()V

    :cond_0
    new-instance v0, L㚬/䂻/㧦/ḓ$ㄏ;

    invoke-direct {v0, p0, p1}, L㚬/䂻/㧦/ḓ$ㄏ;-><init>(L㚬/䂻/㧦/ḓ;L㚬/䂻/ᓭ/䂻$உ;)V

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, L㚬/䂻/㧦/உ;->㖪(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    if-eqz p1, :cond_1

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ㄏ:L㚬/䂻/㧦/㚬;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, L㚬/䂻/㧦/㚬;->䂻(L㚬/䂻/ᓭ/䂻;)V

    :cond_1
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->ᴇ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᶠ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    iget-object v4, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v2}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    return-void

    :cond_3
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean v5, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㲝:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ㄏ:Landroid/view/View;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_e

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_e

    const/4 v6, -0x1

    goto :goto_2

    :cond_7
    :goto_1
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->Ᏼ(L㚬/䂻/㧦/ḓ$ᓭ;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    :cond_8
    return-void

    :cond_9
    iget-boolean v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㲝:Z

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->ග(L㚬/䂻/㧦/ḓ$ᓭ;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, L㚬/䂻/㧦/ḓ$ᓭ;->䂻()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_c
    iget v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->䂻:I

    iget-object v5, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object v3, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    iget-object v5, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ℓ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_e
    const/4 v6, -0x2

    :goto_2
    iput-boolean v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ཇ:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㺴:I

    iget v9, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ḓ:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->㚬:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->䆀:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᆻ:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    :cond_f
    :goto_3
    return-void
.end method

.method public ḙ()V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, L㚬/䂻/㧦/உ;->㭲(Z)V

    :cond_0
    return-void
.end method

.method public final Ổ()V
    .locals 3

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, L㚬/䂻/㧦/ಫ;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->ڈ:Z

    invoke-direct {v0, v1, v2}, L㚬/䂻/㧦/ಫ;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, L㚬/䂻/㧦/ಫ;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, L㚬/䂻/㧦/ಫ;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ᣑ:Z

    invoke-virtual {v0, v1}, L㚬/䂻/㧦/உ;->㞘(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final ỷ()Landroid/view/ViewGroup;
    .locals 7

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    sget-object v1, L㚬/䂻/ಫ;->ᶠ:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㚬/䂻/ಫ;->㴩:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, L㚬/䂻/ಫ;->ޒ:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, L㚬/䂻/㧦/ḓ;->ㄬ(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, L㚬/䂻/㧦/ḓ;->ㄬ(I)Z

    :cond_1
    :goto_0
    sget v1, L㚬/䂻/ಫ;->ᓟ:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, L㚬/䂻/㧦/ḓ;->ㄬ(I)Z

    :cond_2
    sget v1, L㚬/䂻/ಫ;->䆚:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, L㚬/䂻/㧦/ḓ;->ㄬ(I)Z

    :cond_3
    sget v1, L㚬/䂻/ಫ;->ᙏ:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ש:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᣝ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->㨃:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ש:Z

    if-eqz v1, :cond_4

    sget v1, L㚬/䂻/ᆻ;->䆀:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->ڈ:Z

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, L㚬/䂻/உ;->䆀:I

    invoke-virtual {v1, v6, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, L㚬/䂻/ᓭ/㺴;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v4, v0}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, L㚬/䂻/ᆻ;->ბ:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, L㚬/䂻/䆀;->ბ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, L㚬/䂻/ბ/ᾦ;

    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v1, v4}, L㚬/䂻/ბ/ᾦ;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ڈ:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {v1, v2}, L㚬/䂻/ბ/ᾦ;->㧦(I)V

    :cond_6
    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->㫏:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, L㚬/䂻/ბ/ᾦ;->㧦(I)V

    :cond_7
    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ಋ:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, L㚬/䂻/ბ/ᾦ;->㧦(I)V

    goto :goto_3

    :cond_8
    move-object v0, v5

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->㰫:Z

    if-eqz v1, :cond_a

    sget v1, L㚬/䂻/ᆻ;->ᓭ:I

    goto :goto_2

    :cond_a
    sget v1, L㚬/䂻/ᆻ;->ཇ:I

    :goto_2
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    new-instance v1, L㚬/䂻/㧦/ḓ$㚬;

    invoke-direct {v1, p0}, L㚬/䂻/㧦/ḓ$㚬;-><init>(L㚬/䂻/㧦/ḓ;)V

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->ᗼ(Landroid/view/View;L㚬/ℓ/ἥ/ბ;)V

    goto :goto_3

    :cond_b
    move-object v1, v0

    check-cast v1, L㚬/䂻/ბ/㨃;

    new-instance v2, L㚬/䂻/㧦/ḓ$㺴;

    invoke-direct {v2, p0}, L㚬/䂻/㧦/ḓ$㺴;-><init>(L㚬/䂻/㧦/ḓ;)V

    invoke-interface {v1, v2}, L㚬/䂻/ბ/㨃;->setOnFitSystemWindowsListener(L㚬/䂻/ბ/㨃$உ;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_10

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-nez v1, :cond_d

    sget v1, L㚬/䂻/䆀;->Խ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, L㚬/䂻/㧦/ḓ;->㲧:Landroid/widget/TextView;

    :cond_d
    invoke-static {v0}, L㚬/䂻/ბ/㽛;->㚬(Landroid/view/View;)V

    sget v1, L㚬/䂻/䆀;->䂻:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_f

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, L㚬/䂻/㧦/ḓ$ḓ;

    invoke-direct {v2, p0}, L㚬/䂻/㧦/ḓ$ḓ;-><init>(L㚬/䂻/㧦/ḓ;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$உ;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->ڈ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->ש:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->㰫:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, L㚬/䂻/㧦/ḓ;->㨃:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ἂ(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v1, v0, L㚬/ℓ/ἥ/ḓ$உ;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, L㚬/䂻/㧦/䆀;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/ḓ;->㺴(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, p1}, L㚬/䂻/㧦/ḓ;->ⷜ(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1}, L㚬/䂻/㧦/ḓ;->ϣ(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final ἃ()Z
    .locals 6

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ἂ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    iget-object v5, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㮕:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, L㚬/䂻/㧦/ḓ;->㮕:Z

    :cond_2
    :goto_1
    iput-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ἂ:Z

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㮕:Z

    return v0
.end method

.method public ἥ()V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㧦()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->㹖()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->䋡(I)V

    return-void
.end method

.method public final ἴ()Landroidx/appcompat/app/AppCompatActivity;
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public ᾦ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final Ⱝ(IZ)Z
    .locals 8

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ἃ()Z

    move-result v3

    sget-boolean v4, L㚬/䂻/㧦/ḓ;->Ᏼ:Z

    const/16 v5, 0x11

    const/4 v6, 0x0

    if-nez v4, :cond_2

    if-eq v2, v0, :cond_3

    :cond_2
    if-nez v3, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㖆:Z

    if-nez v0, :cond_3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    or-int/2addr v4, v2

    iput v4, v0, Landroid/content/res/Configuration;->uiMode:I

    :try_start_0
    iget-object v4, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v4, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "AppCompatDelegate"

    const-string v7, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-nez v6, :cond_5

    if-eq v0, v2, :cond_5

    if-eqz p2, :cond_5

    if-nez v3, :cond_5

    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->㖆:Z

    if-eqz p2, :cond_5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_4

    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->㭢:Z

    if-eqz p2, :cond_5

    :cond_4
    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v4, p2, Landroid/app/Activity;

    if-eqz v4, :cond_5

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, L㚬/ℓ/㺴/உ;->㹖(Landroid/app/Activity;)V

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    if-eq v0, v2, :cond_6

    invoke-virtual {p0, v2, v3}, L㚬/䂻/㧦/ḓ;->㜱(IZ)V

    goto :goto_2

    :cond_6
    move v1, v6

    :goto_2
    if-eqz v1, :cond_7

    iget-object p2, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v0, p2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_7

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatActivity;->ℓ(I)V

    :cond_7
    return v1
.end method

.method public ⵦ(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v1

    iget-object v2, v1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v3, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㮕(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v1, L㚬/䂻/㧦/ḓ$ᓭ;->㭲:Landroid/os/Bundle;

    :cond_0
    iget-object v2, v1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget-object v2, v1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->clear()V

    :cond_1
    iput-boolean v0, v1, L㚬/䂻/㧦/ḓ$ᓭ;->㞘:Z

    iput-boolean v0, v1, L㚬/䂻/㧦/ḓ$ᓭ;->㲝:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean p1, v0, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public ⶬ(I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㲊()L㚬/䂻/㧦/ḓ$㹖;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, L㚬/䂻/㧦/ḓ$㹖;->㚬()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᘚ()L㚬/䂻/㧦/ḓ$㹖;

    move-result-object p1

    goto :goto_0

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method public ⷜ(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, p2}, L㚬/䂻/㧦/ḓ;->䃻(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ർ:Z

    :goto_1
    return v2
.end method

.method public ㄏ()I
    .locals 1

    iget v0, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    return v0
.end method

.method public ㄬ(I)Z
    .locals 4

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->㴩(I)I

    move-result p1

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㨃:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    iput-boolean v1, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    :cond_1
    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->ڈ:Z

    return v3

    :cond_3
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    return v3

    :cond_4
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->㰫:Z

    return v3

    :cond_5
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->ಋ:Z

    return v3

    :cond_6
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->㫏:Z

    return v3

    :cond_7
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ፖ()V

    iput-boolean v3, p0, L㚬/䂻/㧦/ḓ;->㨃:Z

    return v3
.end method

.method public 㖆(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᰘ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->ᰘ:Z

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    invoke-interface {v0}, L㚬/䂻/ბ/ᾦ;->㹖()V

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/㧦/ḓ;->ᰘ:Z

    return-void
.end method

.method public 㖪(Landroid/os/Bundle;)V
    .locals 2

    iget p1, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    sget-object p1, L㚬/䂻/㧦/ḓ;->㽛:Ljava/util/Map;

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public 㚬(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final 㜱(IZ)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p1, v2, :cond_0

    invoke-static {v0}, L㚬/䂻/㧦/ᆻ;->உ(Landroid/content/res/Resources;)V

    :cond_0
    iget v0, p0, L㚬/䂻/㧦/ḓ;->䅚:I

    if-eqz v0, :cond_1

    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v0, p0, L㚬/䂻/㧦/ḓ;->䅚:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/app/Activity;

    instance-of p2, p1, L㚬/ἥ/ℓ;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, L㚬/ἥ/ℓ;

    invoke-interface {p2}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p2

    invoke-virtual {p2}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object p2

    sget-object v0, L㚬/ἥ/ḓ$㚬;->ḓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {p2, v0}, L㚬/ἥ/ḓ$㚬;->உ(L㚬/ἥ/ḓ$㚬;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, L㚬/䂻/㧦/ḓ;->Խ:Z

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public 㞘()V
    .locals 2

    invoke-static {p0}, L㚬/䂻/㧦/㺴;->ᓭ(L㚬/䂻/㧦/㺴;)V

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㟘:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ᇿ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Խ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/㧦/உ;->ཇ()V

    :cond_1
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㭢()V

    return-void
.end method

.method public final 㟘()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㢏:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ỷ()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㽛()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, L㚬/䂻/ბ/ᾦ;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    move-result-object v1

    invoke-virtual {v1, v0}, L㚬/䂻/㧦/உ;->ḙ(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->㲧:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᰘ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->ध(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㢏:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->䋡(I)V

    :cond_4
    return-void
.end method

.method public final 㠭(L㚬/䂻/㧦/ḓ$ᓭ;)Z
    .locals 6

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    iget v1, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, L㚬/䂻/உ;->䆀:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v5, L㚬/䂻/உ;->ᆻ:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_1
    sget v5, L㚬/䂻/உ;->ᆻ:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v1, L㚬/䂻/ᓭ/㺴;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    :cond_4
    new-instance v1, L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-direct {v1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V

    invoke-virtual {p1, v1}, L㚬/䂻/㧦/ḓ$ᓭ;->㚬(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    return v2
.end method

.method public 㢏()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Խ:Z

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ש()Z

    invoke-static {p0}, L㚬/䂻/㧦/㺴;->ཇ(L㚬/䂻/㧦/㺴;)V

    return-void
.end method

.method public final 㥁()I
    .locals 2

    iget v0, p0, L㚬/䂻/㧦/ḓ;->ỷ:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, L㚬/䂻/㧦/㺴;->ℓ()I

    move-result v0

    :goto_0
    return v0
.end method

.method public 㧦()L㚬/䂻/㧦/உ;
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->Ổ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ಫ:L㚬/䂻/㧦/உ;

    return-object v0
.end method

.method public final 㨃(Z)Z
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㥁()I

    move-result v0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->ⶬ(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, L㚬/䂻/㧦/ḓ;->Ⱝ(IZ)Z

    move-result p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᘚ()L㚬/䂻/㧦/ḓ$㹖;

    move-result-object v1

    invoke-virtual {v1}, L㚬/䂻/㧦/ḓ$㹖;->ḓ()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ⵦ:L㚬/䂻/㧦/ḓ$㹖;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, L㚬/䂻/㧦/ḓ$㹖;->உ()V

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㲊()L㚬/䂻/㧦/ḓ$㹖;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ$㹖;->ḓ()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᭊ:L㚬/䂻/㧦/ḓ$㹖;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ$㹖;->உ()V

    :cond_4
    :goto_1
    return p1
.end method

.method public 㫏(I)V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ม:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ℓ:L㚬/䂻/㧦/ḓ$ಫ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ㄏ;->உ()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final 㭢()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ⵦ:L㚬/䂻/㧦/ḓ$㹖;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ$㹖;->உ()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᭊ:L㚬/䂻/㧦/ḓ$㹖;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ$㹖;->உ()V

    :cond_1
    return-void
.end method

.method public 㭲(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->㟘()V

    return-void
.end method

.method public 㮕()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/ᾦ;->㹖()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->㭲:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᭊ()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->close()V

    :cond_3
    return-void
.end method

.method public final 㰫(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/㧦/ḓ;->㹖:Ljava/lang/CharSequence;

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/ᾦ;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/䂻/㧦/உ;->ḙ(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㲧:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final 㱱(L㚬/䂻/㧦/ḓ$ᓭ;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ἥ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ಫ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, L㚬/䂻/㧦/ḓ;->ἥ:L㚬/䂻/ბ/ᾦ;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    :cond_3
    return v1
.end method

.method public final 㲊()L㚬/䂻/㧦/ḓ$㹖;
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᭊ:L㚬/䂻/㧦/ḓ$㹖;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/㧦/ḓ$㧦;

    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, L㚬/䂻/㧦/ḓ$㧦;-><init>(L㚬/䂻/㧦/ḓ;Landroid/content/Context;)V

    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ᭊ:L㚬/䂻/㧦/ḓ$㹖;

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᭊ:L㚬/䂻/㧦/ḓ$㹖;

    return-object v0
.end method

.method public 㲝(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/㧦/ḓ;->㖆:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->㨃(Z)Z

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᣝ()V

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, L㚬/ℓ/㺴/䆀;->㚬(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ;->ᙏ()L㚬/䂻/㧦/உ;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, L㚬/䂻/㧦/ḓ;->ᣑ:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, L㚬/䂻/㧦/உ;->㞘(Z)V

    :cond_1
    :goto_1
    iput-boolean p1, p0, L㚬/䂻/㧦/ḓ;->㭢:Z

    return-void
.end method

.method public final 㴩(I)I
    .locals 2

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_1
    return p1
.end method

.method public 㹖()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, L㚬/ℓ/ἥ/䆀;->䂻(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, L㚬/䂻/㧦/ḓ;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public 㺴(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ḓ;->㨃(Z)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/㧦/ḓ;->㖆:Z

    return-void
.end method

.method public final 㽛()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ḓ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->㹖:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->ᗫ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    return-void
.end method

.method public final 䃻(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ḓ;->ᣦ(IZ)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    iget-boolean v0, p1, L㚬/䂻/㧦/ḓ$ᓭ;->ᓭ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/㧦/ḓ;->Ӣ(L㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 䅚(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᣦ:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    sget-object v2, L㚬/䂻/ಫ;->ᶠ:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, L㚬/䂻/ಫ;->ᗫ:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, L㚬/䂻/㧦/ḓ;->ᣦ:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    :goto_1
    iput-object v0, p0, L㚬/䂻/㧦/ḓ;->ᣦ:Landroidx/appcompat/app/AppCompatViewInflater;

    :cond_2
    :goto_2
    sget-boolean v8, L㚬/䂻/㧦/ḓ;->ಇ:Z

    if-eqz v8, :cond_5

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ḓ;->䆚(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_4
    :goto_3
    move v7, v1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    iget-object v2, p0, L㚬/䂻/㧦/ḓ;->ᣦ:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v9, 0x1

    invoke-static {}, L㚬/䂻/ბ/ᣦ;->䂻()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public 䆍()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ḓ;->㖪:Z

    return v0
.end method

.method public final 䆚(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eq p1, v1, :cond_3

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ർ(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final 䋡(I)V
    .locals 2

    iget v0, p0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    iget-boolean p1, p0, L㚬/䂻/㧦/ḓ;->㟘:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ;->ᇿ:Ljava/lang/Runnable;

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->ᇿ(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, L㚬/䂻/㧦/ḓ;->㟘:Z

    :cond_0
    return-void
.end method

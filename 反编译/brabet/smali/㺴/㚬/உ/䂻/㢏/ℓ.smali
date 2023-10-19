.class public final L㺴/㚬/உ/䂻/㢏/ℓ;
.super L㺴/㚬/உ/䂻/㢏/ბ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/㢏/ℓ$㹖;,
        L㺴/㚬/உ/䂻/㢏/ℓ$㧦;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u10d1<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final ཇ:Ljava/lang/Object;

.field public static final ბ:Ljava/lang/Object;

.field public static final ᓭ:Ljava/lang/Object;

.field public static final ἥ:Ljava/lang/Object;


# instance fields
.field public ಫ:Landroidx/recyclerview/widget/RecyclerView;

.field public ᆻ:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

.field public ḓ:L㺴/㚬/உ/䂻/㢏/உ;

.field public ℓ:L㺴/㚬/உ/䂻/㢏/㚬;

.field public ㄏ:Landroidx/recyclerview/widget/RecyclerView;

.field public 㚬:I

.field public 㧦:Landroid/view/View;

.field public 㹖:Landroid/view/View;

.field public 㺴:L㺴/㚬/உ/䂻/㢏/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TS;>;"
        }
    .end annotation
.end field

.field public 䆀:L㺴/㚬/உ/䂻/㢏/㹖;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ℓ;->ἥ:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ℓ;->ཇ:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ℓ;->ᓭ:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, L㺴/㚬/உ/䂻/㢏/ℓ;->ბ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/㢏/ბ;-><init>()V

    return-void
.end method

.method public static ბ(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, L㺴/㚬/உ/䂻/㺴;->㹖:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static synthetic ᆻ(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/㚬;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ℓ:L㺴/㚬/உ/䂻/㢏/㚬;

    return-object p0
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/㺴;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    return-object p0
.end method

.method public static synthetic ℓ(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic ㄏ(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/㹖;)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    return-object p1
.end method

.method public static synthetic 㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static 㞘(L㺴/㚬/உ/䂻/㢏/㺴;IL㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/ℓ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TT;>;I",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0b89;",
            ")",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u2113<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/㢏/உ;->㲝()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p0

    const-string p1, "CURRENT_MONTH_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/உ;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    return-object p0
.end method

.method public static synthetic 䆀(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/㺴;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/உ;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/㢏/㹖;

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㚬;

    invoke-direct {v0, p3}, L㺴/㚬/உ/䂻/㢏/㚬;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ℓ:L㺴/㚬/உ/䂻/㢏/㚬;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-static {p3}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, L㺴/㚬/உ/䂻/ℓ;->ℓ:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    sget v1, L㺴/㚬/உ/䂻/ℓ;->䆀:I

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, L㺴/㚬/உ/䂻/䆀;->㧦:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, L㺴/㚬/உ/䂻/㢏/ℓ$䂻;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㢏/ℓ$䂻;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    invoke-static {p2, v1}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    new-instance v1, L㺴/㚬/உ/䂻/㢏/ᆻ;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/㢏/ᆻ;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    sget p2, L㺴/㚬/உ/䂻/䆀;->ཇ:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;Landroid/content/Context;IZI)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, L㺴/㚬/உ/䂻/㢏/ℓ;->ἥ:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance p2, L㺴/㚬/உ/䂻/㢏/ཇ;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    new-instance v4, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;

    invoke-direct {v4, p0}, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    invoke-direct {p2, p3, v0, v1, v4}, L㺴/㚬/உ/䂻/㢏/ཇ;-><init>(Landroid/content/Context;L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;L㺴/㚬/உ/䂻/㢏/ℓ$㹖;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$ᆻ;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/ᆻ;->䂻:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, L㺴/㚬/உ/䂻/䆀;->ᓭ:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, L㺴/㚬/உ/䂻/㢏/㭲;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㢏/㭲;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$ᆻ;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㧦()Landroidx/recyclerview/widget/RecyclerView$ཇ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ཇ;)V

    :cond_1
    sget v0, L㺴/㚬/உ/䂻/䆀;->䆀:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ(Landroid/view/View;L㺴/㚬/உ/䂻/㢏/ཇ;)V

    :cond_2
    invoke-static {p3}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, L㚬/㲝/㺴/ℓ;

    invoke-direct {p3}, L㚬/㲝/㺴/ℓ;-><init>()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, L㚬/㲝/㺴/ཇ;->䂻(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    iget-object p3, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p2, v0}, L㺴/㚬/உ/䂻/㢏/ཇ;->㲧(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final ಫ(Landroid/view/View;L㺴/㚬/உ/䂻/㢏/ཇ;)V
    .locals 4

    sget v0, L㺴/㚬/உ/䂻/䆀;->䆀:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    sget-object v1, L㺴/㚬/உ/䂻/㢏/ℓ;->ბ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v1, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    sget v1, L㺴/㚬/உ/䂻/䆀;->ℓ:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    sget-object v2, L㺴/㚬/உ/䂻/㢏/ℓ;->ཇ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v2, L㺴/㚬/உ/䂻/䆀;->ᆻ:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    sget-object v3, L㺴/㚬/உ/䂻/㢏/ℓ;->ᓭ:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v3, L㺴/㚬/உ/䂻/䆀;->ᓭ:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㧦:Landroid/view/View;

    sget v3, L㺴/㚬/உ/䂻/䆀;->ಫ:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖:Landroid/view/View;

    sget-object p1, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->䂻:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㖪(L㺴/㚬/உ/䂻/㢏/ℓ$㧦;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㢏/㹖;->ᓭ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;

    invoke-direct {v3, p0, p2, v0}, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/ཇ;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$ḙ;)V

    new-instance p1, L㺴/㚬/உ/䂻/㢏/ℓ$ℓ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㢏/ℓ$ℓ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, L㺴/㚬/உ/䂻/㢏/ℓ$ㄏ;

    invoke-direct {p1, p0, p2}, L㺴/㚬/உ/䂻/㢏/ℓ$ㄏ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/ཇ;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;

    invoke-direct {p1, p0, p2}, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/ཇ;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ཇ()L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    return-object v0
.end method

.method public ᓭ()L㺴/㚬/உ/䂻/㢏/㺴;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    return-object v0
.end method

.method public ḙ(L㺴/㚬/உ/䂻/㢏/㹖;)V
    .locals 6

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/ཇ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/ཇ;->㲧(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0, v2}, L㺴/㚬/உ/䂻/㢏/ཇ;->㲧(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㭲(I)V

    return-void
.end method

.method public ἥ()L㺴/㚬/உ/䂻/㢏/㚬;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ℓ:L㺴/㚬/உ/䂻/㢏/㚬;

    return-object v0
.end method

.method public 㖪(L㺴/㚬/உ/䂻/㢏/ℓ$㧦;)V
    .locals 4

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ᆻ:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    sget-object v0, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/㭲;

    iget-object v3, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v3, v3, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    invoke-virtual {v0, v3}, L㺴/㚬/உ/䂻/㢏/㭲;->ม(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ም(I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㧦:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->䂻:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㧦:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ḙ(L㺴/㚬/உ/䂻/㢏/㹖;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public 㢏()V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ᆻ:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    sget-object v1, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    if-ne v0, v1, :cond_0

    sget-object v0, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->䂻:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㖪(L㺴/㚬/உ/䂻/㢏/ℓ$㧦;)V

    goto :goto_0

    :cond_0
    sget-object v2, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->䂻:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㖪(L㺴/㚬/உ/䂻/㢏/ℓ$㧦;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final 㧦()Landroidx/recyclerview/widget/RecyclerView$ཇ;
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㢏/ℓ$ḓ;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㢏/ℓ$ḓ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V

    return-object v0
.end method

.method public final 㭲(I)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, L㺴/㚬/உ/䂻/㢏/ℓ$உ;

    invoke-direct {v1, p0, p1}, L㺴/㚬/உ/䂻/㢏/ℓ$உ;-><init>(L㺴/㚬/உ/䂻/㢏/ℓ;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public 㲝()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public 㹖()L㺴/㚬/உ/䂻/㢏/உ;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    return-object v0
.end method

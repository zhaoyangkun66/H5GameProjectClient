.class public L㚬/䂻/ᓭ/ಫ/ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ᆻ/உ/உ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ᓭ/ಫ/ᆻ$䂻;,
        L㚬/䂻/ᓭ/ಫ/ᆻ$உ;
    }
.end annotation


# static fields
.field public static final ಋ:[I


# instance fields
.field public final உ:Landroid/content/Context;

.field public ಫ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation
.end field

.field public ม:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u1f25;",
            ">;>;"
        }
    .end annotation
.end field

.field public ཇ:Ljava/lang/CharSequence;

.field public ბ:Landroid/view/View;

.field public ᆻ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation
.end field

.field public ᓭ:Landroid/graphics/drawable/Drawable;

.field public ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

.field public ḙ:Z

.field public ἥ:Landroid/view/ContextMenu$ContextMenuInfo;

.field public ℓ:Z

.field public ㄏ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation
.end field

.field public ㄬ:Z

.field public 㖪:Z

.field public 㚬:Z

.field public 㞘:Z

.field public 㢏:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation
.end field

.field public 㧦:Z

.field public 㫏:Z

.field public 㭲:Z

.field public 㲝:Z

.field public 㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

.field public 㹖:I

.field public 㺴:Z

.field public final 䂻:Landroid/content/res/Resources;

.field public 䆀:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಋ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㹖:I

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭲:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḙ:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㢏:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄬ:Z

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㽛(Z)V

    return-void
.end method

.method public static ཇ(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->䆀()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static ᾦ(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    sget-object v1, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಋ:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    new-instance p2, L㚬/䂻/ᓭ/ಫ/㞘;

    iget-object p3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, L㚬/䂻/ᓭ/ಫ/㞘;-><init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧(L㚬/䂻/ᓭ/ಫ/㞘;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ:Ljava/lang/CharSequence;

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 5

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ(ILandroid/view/KeyEvent;)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭢(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ(ILandroid/view/KeyEvent;)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭢(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_1
    return p1
.end method

.method public removeGroup(I)V
    .locals 5

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㹖(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ԁ(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ԁ(IZ)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ(Z)V

    invoke-virtual {v2, p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄬ:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4, p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ㄬ(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final Ԁ(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Խ(Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ἥ;I)Z
    .locals 6

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㧦()Z

    move-result v1

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->䂻()L㚬/ℓ/ἥ/䂻;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, L㚬/ℓ/ἥ/䂻;->உ()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_8

    :goto_1
    invoke-virtual {p0, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_4
    :goto_2
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_5
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, L㚬/䂻/ᓭ/ಫ/㞘;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, L㚬/䂻/ᓭ/ಫ/㞘;-><init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)V

    invoke-virtual {p1, p3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㲧(L㚬/䂻/ᓭ/ಫ/㞘;)V

    :cond_6
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/㞘;

    if-eqz v4, :cond_7

    invoke-virtual {v2, p1}, L㚬/ℓ/ἥ/䂻;->䆀(Landroid/view/SubMenu;)V

    :cond_7
    invoke-virtual {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ(L㚬/䂻/ᓭ/ಫ/㞘;L㚬/䂻/ᓭ/ಫ/ἥ;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    :goto_3
    return v1

    :cond_9
    :goto_4
    return v0
.end method

.method public ש()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ڈ()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    return-object v0
.end method

.method public உ(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    invoke-static {p3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᾦ(I)I

    move-result v7

    iget v6, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㹖:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᆻ(IIIILjava/lang/CharSequence;I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἥ:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㢏(Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-static {p2, v7}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-object p1
.end method

.method public ಇ()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝:Z

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘:Z

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭲:Z

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_0
    return-void
.end method

.method public ಋ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḙ:Z

    return v0
.end method

.method public final ಫ(L㚬/䂻/ᓭ/ಫ/㞘;L㚬/䂻/ᓭ/ಫ/ἥ;)Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z

    move-result v1

    :cond_1
    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v2, :cond_3

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    invoke-interface {v2, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public ർ(L㚬/䂻/ᓭ/ಫ/ㄏ;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ:Z

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public ม()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public ბ(ILandroid/view/KeyEvent;)L㚬/䂻/ᓭ/ಫ/ㄏ;
    .locals 11

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㢏:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-object p1

    :cond_1
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᰘ()Z

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v4, :cond_2

    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getNumericShortcut()C

    move-result v8

    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-ne v8, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public final ᆻ(IIIILjava/lang/CharSequence;I)L㚬/䂻/ᓭ/ಫ/ㄏ;
    .locals 9

    new-instance v8, L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;-><init>(L㚬/䂻/ᓭ/ಫ/ᆻ;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method public final ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ڈ()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    iput-object p5, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ:Landroid/view/View;

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ:Ljava/lang/CharSequence;

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, L㚬/ℓ/ḓ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iput-object p4, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᓭ:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public ᓭ(I)I
    .locals 3

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public ᘚ(Landroid/view/View;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public ᣑ(I)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public ᣝ(Landroid/graphics/drawable/Drawable;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public ᣦ(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏:Z

    return-void
.end method

.method public ᭊ(Landroid/view/MenuItem;)V
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ἥ()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㭲(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    return-void
.end method

.method public ᰘ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬:Z

    return v0
.end method

.method public ᱹ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㺴:Z

    return v0
.end method

.method public final ḓ(Z)V
    .locals 3

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v2, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖪:Z

    return-void
.end method

.method public ḙ()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public Ổ()V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭲:Z

    :cond_0
    return-void
.end method

.method public ỷ(L㚬/䂻/ᓭ/ಫ/ἥ;)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    :cond_1
    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

    return-void
.end method

.method public ἥ(II)I
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public ℓ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ⵦ(I)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㹖:I

    return-object p0
.end method

.method public final ㄏ(Z)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v2, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->ಫ(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    return-void
.end method

.method public ㄬ()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ბ:Landroid/view/View;

    return-object v0
.end method

.method public 㖆(Z)V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ:Z

    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    :cond_0
    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭲:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public 㖪()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    return-object v0
.end method

.method public 㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, L㚬/䂻/ᓭ/ಫ/ἥ;->㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    return-void
.end method

.method public 㞘()V
    .locals 6

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ש()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v5, :cond_1

    iget-object v5, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, L㚬/䂻/ᓭ/ಫ/ἥ;->㚬()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-object v5, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ש()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-boolean v2, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    return-void
.end method

.method public 㟘(I)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public 㢏()L㚬/䂻/ᓭ/ಫ/ㄏ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-object v0
.end method

.method public 㥁(L㚬/䂻/ᓭ/ಫ/ㄏ;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦:Z

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    return-void
.end method

.method public 㧦(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v3, :cond_2

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->䆀(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    if-eqz v1, :cond_4

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

    :cond_4
    return v1
.end method

.method public 㨃()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄬ:Z

    return v0
.end method

.method public 㫏()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಫ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 㭢(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Խ(Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ἥ;I)Z

    move-result p1

    return p1
.end method

.method public 㭲()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㞘()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ㄏ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 㮕(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/㞘;

    invoke-virtual {v3, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㮕(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḙ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public 㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    return-object p0
.end method

.method public 㲊(Ljava/lang/CharSequence;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᇿ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public 㲝(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u310f;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᰘ()Z

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    iget-object v7, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v8, p1, p2, p3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲝(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_5

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-ne p2, v4, :cond_6

    :cond_5
    invoke-virtual {v7}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public 㲧()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ཇ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 㹖(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἥ(II)I

    move-result p1

    return p1
.end method

.method public 㺴()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    :cond_0
    return-void
.end method

.method public final 㽛(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->䂻:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-static {p1, v1}, L㚬/ℓ/ἥ/ḙ;->ḓ(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㺴:Z

    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ἥ;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->உ:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    return-void
.end method

.method public 䅚(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḙ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/㞘;

    invoke-virtual {v3, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䅚(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    return-void
.end method

.method public 䆀(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/ἥ;

    if-nez v3, :cond_2

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->ม:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ;->ḓ(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧:L㚬/䂻/ᓭ/ಫ/ㄏ;

    :cond_4
    :goto_1
    return v1
.end method

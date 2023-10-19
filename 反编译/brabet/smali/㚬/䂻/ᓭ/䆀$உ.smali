.class public L㚬/䂻/ᓭ/䆀$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/䂻$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroid/view/ActionMode$Callback;

.field public final 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u14ed/\u4180;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:L㚬/䆀/ᆻ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u11bb<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/䆀$உ;->䂻:Landroid/content/Context;

    iput-object p2, p0, L㚬/䂻/ᓭ/䆀$உ;->உ:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/䆀$உ;->㚬:Ljava/util/ArrayList;

    new-instance p1, L㚬/䆀/ᆻ;

    invoke-direct {p1}, L㚬/䆀/ᆻ;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/䆀$உ;->㺴:L㚬/䆀/ᆻ;

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->உ:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/䆀$உ;->ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, L㚬/䂻/ᓭ/䆀$உ;->䆀(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/䆀$உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/䆀;

    if-eqz v2, :cond_0

    iget-object v3, v2, L㚬/䂻/ᓭ/䆀;->䂻:L㚬/䂻/ᓭ/䂻;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, L㚬/䂻/ᓭ/䆀;

    iget-object v1, p0, L㚬/䂻/ᓭ/䆀$உ;->䂻:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, L㚬/䂻/ᓭ/䆀;-><init>(Landroid/content/Context;L㚬/䂻/ᓭ/䂻;)V

    iget-object p1, p0, L㚬/䂻/ᓭ/䆀$உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public 㚬(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->உ:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/䆀$உ;->ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p0, p2}, L㚬/䂻/ᓭ/䆀$உ;->䆀(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public 㺴(L㚬/䂻/ᓭ/䂻;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->உ:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/䆀$உ;->ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/䂻;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->உ:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/䆀$உ;->ḓ(L㚬/䂻/ᓭ/䂻;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, L㚬/䂻/ᓭ/ಫ/ಫ;

    iget-object v2, p0, L㚬/䂻/ᓭ/䆀$உ;->䂻:Landroid/content/Context;

    check-cast p2, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-direct {v1, v2, p2}, L㚬/䂻/ᓭ/ಫ/ಫ;-><init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/䂻;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final 䆀(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/䆀$உ;->㺴:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ᓭ/ಫ/ᓭ;

    iget-object v1, p0, L㚬/䂻/ᓭ/䆀$உ;->䂻:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, L㚬/ℓ/ᆻ/உ/உ;

    invoke-direct {v0, v1, v2}, L㚬/䂻/ᓭ/ಫ/ᓭ;-><init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/உ;)V

    iget-object v1, p0, L㚬/䂻/ᓭ/䆀$உ;->㺴:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

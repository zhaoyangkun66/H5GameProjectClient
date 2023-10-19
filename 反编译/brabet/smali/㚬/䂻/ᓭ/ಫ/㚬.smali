.class public abstract L㚬/䂻/ᓭ/ಫ/㚬;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/content/Context;

.field public 㚬:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "L\u36ac/\u2113/\u11bb/\u0b89/\u36ac;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "L\u36ac/\u2113/\u11bb/\u0b89/\u40bb;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->உ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ᆻ(I)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method public final ḓ()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->㚬:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final 㚬(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, L㚬/ℓ/ᆻ/உ/䂻;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, L㚬/䆀/உ;

    invoke-direct {v1}, L㚬/䆀/உ;-><init>()V

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, L㚬/䂻/ᓭ/ಫ/ಫ;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->உ:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, L㚬/䂻/ᓭ/ಫ/ಫ;-><init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/䂻;)V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final 㺴(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, L㚬/ℓ/ᆻ/உ/㚬;

    if-eqz v0, :cond_2

    check-cast p1, L㚬/ℓ/ᆻ/உ/㚬;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->㚬:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->㚬:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->㚬:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㭲;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->உ:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, L㚬/䂻/ᓭ/ಫ/㭲;-><init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/㚬;)V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㚬;->㚬:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public final 䆀(I)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㚬;->䂻:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

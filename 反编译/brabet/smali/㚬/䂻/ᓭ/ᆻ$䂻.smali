.class public L㚬/䂻/ᓭ/ᆻ$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ᆻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public ש:Landroid/graphics/PorterDuff$Mode;

.field public ڈ:Ljava/lang/CharSequence;

.field public உ:Landroid/view/Menu;

.field public ಋ:L㚬/ℓ/ἥ/䂻;

.field public ಫ:I

.field public ม:I

.field public ཇ:C

.field public ბ:C

.field public ᆻ:Z

.field public ᓭ:I

.field public ḓ:I

.field public ḙ:Z

.field public ἥ:I

.field public ᾦ:Ljava/lang/CharSequence;

.field public ℓ:Z

.field public ㄏ:I

.field public ㄬ:Ljava/lang/String;

.field public 㖪:Z

.field public 㚬:I

.field public 㞘:I

.field public 㢏:I

.field public 㧦:Ljava/lang/CharSequence;

.field public final synthetic 㨃:L㚬/䂻/ᓭ/ᆻ;

.field public 㫏:Ljava/lang/String;

.field public 㭲:Z

.field public 㰫:Landroid/content/res/ColorStateList;

.field public 㲝:I

.field public 㲧:Ljava/lang/String;

.field public 㹖:Ljava/lang/CharSequence;

.field public 㺴:I

.field public 䂻:I

.field public 䆀:Z


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ᆻ;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㰫:Landroid/content/res/ColorStateList;

    iput-object p1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ש:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->உ:Landroid/view/Menu;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ᆻ$䂻;->ℓ()V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ℓ:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->உ:Landroid/view/Menu;

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䂻:I

    iget v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄏ:I

    iget v3, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಫ:I

    iget-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㧦:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄏ(Landroid/view/MenuItem;)V

    return-void
.end method

.method public ᆻ(Landroid/util/AttributeSet;)V
    .locals 6

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ᆻ;->㚬:Landroid/content/Context;

    sget-object v1, L㚬/䂻/ಫ;->ཌྷ:[I

    invoke-static {v0, p1, v1}, L㚬/䂻/ბ/ᣝ;->ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    sget v0, L㚬/䂻/ಫ;->ܕ:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄏ:I

    sget v0, L㚬/䂻/ಫ;->ᐶ:I

    iget v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㚬:I

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    sget v2, L㚬/䂻/ಫ;->ࢫ:I

    iget v3, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㺴:I

    invoke-virtual {p1, v2, v3}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಫ:I

    sget v0, L㚬/䂻/ಫ;->ਮ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㧦:Ljava/lang/CharSequence;

    sget v0, L㚬/䂻/ಫ;->ᖰ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㹖:Ljava/lang/CharSequence;

    sget v0, L㚬/䂻/ಫ;->Ꭸ:I

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ἥ:I

    sget v0, L㚬/䂻/ಫ;->ም:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ᆻ$䂻;->㚬(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ཇ:C

    sget v0, L㚬/䂻/ಫ;->ܯ:I

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᓭ:I

    sget v0, L㚬/䂻/ಫ;->ঔ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ᆻ$䂻;->㚬(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ბ:C

    sget v0, L㚬/䂻/ಫ;->䉄:I

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㲝:I

    sget v0, L㚬/䂻/ಫ;->䉏:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ḓ:I

    :goto_0
    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㞘:I

    sget v0, L㚬/䂻/ಫ;->ᑕ:I

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㭲:Z

    sget v0, L㚬/䂻/ಫ;->ᤜ:I

    iget-boolean v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䆀:Z

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ḙ:Z

    sget v0, L㚬/䂻/ಫ;->ᰊ:I

    iget-boolean v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᆻ:Z

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㖪:Z

    sget v0, L㚬/䂻/ಫ;->㚫:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㢏:I

    sget v0, L㚬/䂻/ಫ;->ᢪ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㫏:Ljava/lang/String;

    sget v0, L㚬/䂻/ಫ;->Ϋ:I

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ม:I

    sget v0, L㚬/䂻/ಫ;->ㆡ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㲧:Ljava/lang/String;

    sget v0, L㚬/䂻/ಫ;->ᄹ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄬ:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v5, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ม:I

    if-nez v5, :cond_2

    iget-object v5, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㲧:Ljava/lang/String;

    if-nez v5, :cond_2

    sget-object v3, L㚬/䂻/ᓭ/ᆻ;->䆀:[Ljava/lang/Class;

    iget-object v5, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v5, v5, L㚬/䂻/ᓭ/ᆻ;->䂻:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v5}, L㚬/䂻/ᓭ/ᆻ$䂻;->ḓ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ℓ/ἥ/䂻;

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಋ:L㚬/ℓ/ἥ/䂻;

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಋ:L㚬/ℓ/ἥ/䂻;

    :goto_2
    sget v0, L㚬/䂻/ಫ;->Ṻ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᾦ:Ljava/lang/CharSequence;

    sget v0, L㚬/䂻/ಫ;->㛒:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ڈ:Ljava/lang/CharSequence;

    sget v0, L㚬/䂻/ಫ;->ᄂ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0, v2}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    iget-object v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ש:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, L㚬/䂻/ბ/㰫;->㺴(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ש:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    :cond_4
    iput-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ש:Landroid/graphics/PorterDuff$Mode;

    :goto_3
    sget v0, L㚬/䂻/ಫ;->ᯕ:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㰫:Landroid/content/res/ColorStateList;

    goto :goto_4

    :cond_5
    iput-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㰫:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iput-boolean v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ℓ:Z

    return-void
.end method

.method public final ḓ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v1, v1, L㚬/䂻/ᓭ/ᆻ;->㚬:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public ℓ()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䂻:I

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㚬:I

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㺴:I

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ḓ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䆀:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᆻ:Z

    return-void
.end method

.method public final ㄏ(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㭲:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ḙ:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㖪:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㞘:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㹖:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ἥ:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㢏:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㫏:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ᆻ;->㚬:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, L㚬/䂻/ᓭ/ᆻ$உ;

    iget-object v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ᆻ;->䂻()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㫏:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, L㚬/䂻/ᓭ/ᆻ$உ;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    instance-of v0, p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    :cond_4
    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㞘:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v0, v3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ḙ(Z)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, L㚬/䂻/ᓭ/ಫ/ಫ;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-virtual {v0, v3}, L㚬/䂻/ᓭ/ಫ/ಫ;->ℓ(Z)V

    :cond_6
    :goto_2
    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㲧:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v1, L㚬/䂻/ᓭ/ᆻ;->ḓ:[Ljava/lang/Class;

    iget-object v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v2, v2, L㚬/䂻/ᓭ/ᆻ;->உ:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, L㚬/䂻/ᓭ/ᆻ$䂻;->ḓ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    :cond_7
    iget v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ม:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಋ:L㚬/ℓ/ἥ/䂻;

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/ℓ;->உ(Landroid/view/MenuItem;L㚬/ℓ/ἥ/䂻;)Landroid/view/MenuItem;

    :cond_a
    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᾦ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/ℓ;->㚬(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ڈ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/ℓ;->ᆻ(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ཇ:C

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᓭ:I

    invoke-static {p1, v0, v1}, L㚬/ℓ/ἥ/ℓ;->䂻(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ბ:C

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㲝:I

    invoke-static {p1, v0, v1}, L㚬/ℓ/ἥ/ℓ;->䆀(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ש:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/ℓ;->ḓ(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_b
    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㰫:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/ℓ;->㺴(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method

.method public final 㚬(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public 㺴()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ℓ:Z

    return v0
.end method

.method public 䂻()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ℓ:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->உ:Landroid/view/Menu;

    iget v1, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䂻:I

    iget v2, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄏ:I

    iget v3, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ಫ:I

    iget-object v4, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㧦:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, L㚬/䂻/ᓭ/ᆻ$䂻;->ㄏ(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public 䆀(Landroid/util/AttributeSet;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㨃:L㚬/䂻/ᓭ/ᆻ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ᆻ;->㚬:Landroid/content/Context;

    sget-object v1, L㚬/䂻/ಫ;->ଜ:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, L㚬/䂻/ಫ;->ᴪ:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䂻:I

    sget v0, L㚬/䂻/ಫ;->㗽:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㚬:I

    sget v0, L㚬/䂻/ಫ;->䇌:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->㺴:I

    sget v0, L㚬/䂻/ಫ;->Ⅎ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ḓ:I

    sget v0, L㚬/䂻/ಫ;->Ꮐ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->䆀:Z

    sget v0, L㚬/䂻/ಫ;->ጘ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ᆻ$䂻;->ᆻ:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

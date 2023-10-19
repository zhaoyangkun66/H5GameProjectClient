.class public L㚬/ḙ/㲝$䂻;
.super L㚬/ḙ/ཇ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/㲝;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public உ:L㚬/ḙ/㲝;


# direct methods
.method public constructor <init>(L㚬/ḙ/㲝;)V
    .locals 0

    invoke-direct {p0}, L㚬/ḙ/ཇ;-><init>()V

    iput-object p1, p0, L㚬/ḙ/㲝$䂻;->உ:L㚬/ḙ/㲝;

    return-void
.end method


# virtual methods
.method public ḓ(L㚬/ḙ/ἥ;)V
    .locals 2

    iget-object v0, p0, L㚬/ḙ/㲝$䂻;->உ:L㚬/ḙ/㲝;

    iget v1, v0, L㚬/ḙ/㲝;->Խ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, L㚬/ḙ/㲝;->Խ:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, L㚬/ḙ/㲝;->Ԁ:Z

    invoke-virtual {v0}, L㚬/ḙ/ἥ;->ბ()V

    :cond_0
    invoke-virtual {p1, p0}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    return-void
.end method

.method public 㚬(L㚬/ḙ/ἥ;)V
    .locals 1

    iget-object p1, p0, L㚬/ḙ/㲝$䂻;->உ:L㚬/ḙ/㲝;

    iget-boolean v0, p1, L㚬/ḙ/㲝;->Ԁ:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, L㚬/ḙ/ἥ;->ᣦ()V

    iget-object p1, p0, L㚬/ḙ/㲝$䂻;->உ:L㚬/ḙ/㲝;

    const/4 v0, 0x1

    iput-boolean v0, p1, L㚬/ḙ/㲝;->Ԁ:Z

    :cond_0
    return-void
.end method

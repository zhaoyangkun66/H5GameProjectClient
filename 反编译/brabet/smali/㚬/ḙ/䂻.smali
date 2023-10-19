.class public L㚬/ḙ/䂻;
.super L㚬/ḙ/㲝;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/ḙ/㲝;-><init>()V

    invoke-virtual {p0}, L㚬/ḙ/䂻;->ϣ()V

    return-void
.end method


# virtual methods
.method public final ϣ()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㚬/ḙ/㲝;->ⷜ(I)L㚬/ḙ/㲝;

    new-instance v1, L㚬/ḙ/㺴;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, L㚬/ḙ/㺴;-><init>(I)V

    invoke-virtual {p0, v1}, L㚬/ḙ/㲝;->ග(L㚬/ḙ/ἥ;)L㚬/ḙ/㲝;

    new-instance v1, L㚬/ḙ/㚬;

    invoke-direct {v1}, L㚬/ḙ/㚬;-><init>()V

    invoke-virtual {p0, v1}, L㚬/ḙ/㲝;->ග(L㚬/ḙ/ἥ;)L㚬/ḙ/㲝;

    new-instance v1, L㚬/ḙ/㺴;

    invoke-direct {v1, v0}, L㚬/ḙ/㺴;-><init>(I)V

    invoke-virtual {p0, v1}, L㚬/ḙ/㲝;->ග(L㚬/ḙ/ἥ;)L㚬/ḙ/㲝;

    return-void
.end method

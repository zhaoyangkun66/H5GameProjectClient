.class public abstract Lḓ/ᓭ/㺴/ἥ;
.super Lḓ/ᓭ/㺴/ᓭ;
.source ""

# interfaces
.implements Lḓ/㞘/㺴;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lḓ/ᓭ/㺴/ᓭ;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lḓ/㞘/㺴;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public உ()Lḓ/㞘/㺴$உ;
    .locals 1

    invoke-virtual {p0}, Lḓ/ᓭ/㺴/ᓭ;->ಫ()Lḓ/㞘/ḓ;

    move-result-object v0

    check-cast v0, Lḓ/㞘/㺴;

    invoke-interface {v0}, Lḓ/㞘/㺴;->உ()Lḓ/㞘/㺴$உ;

    move-result-object v0

    return-object v0
.end method

.method public 㺴()Lḓ/㞘/உ;
    .locals 0

    invoke-static {p0}, Lḓ/ᓭ/㺴/㲝;->㚬(Lḓ/ᓭ/㺴/ἥ;)Lḓ/㞘/㺴;

    return-object p0
.end method

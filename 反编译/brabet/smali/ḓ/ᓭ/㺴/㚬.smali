.class public abstract Lḓ/ᓭ/㺴/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lḓ/㞘/உ;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lḓ/ᓭ/㺴/㚬$உ;
    }
.end annotation


# static fields
.field public static final ℓ:Ljava/lang/Object;


# instance fields
.field public final ᆻ:Z

.field public final ḓ:Ljava/lang/String;

.field public final 㚬:Ljava/lang/Object;

.field public final 㺴:Ljava/lang/Class;

.field public transient 䂻:Lḓ/㞘/உ;

.field public final 䆀:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lḓ/ᓭ/㺴/㚬$உ;->உ()Lḓ/ᓭ/㺴/㚬$உ;

    move-result-object v0

    sput-object v0, Lḓ/ᓭ/㺴/㚬;->ℓ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lḓ/ᓭ/㺴/㚬;->ℓ:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lḓ/ᓭ/㺴/㚬;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lḓ/ᓭ/㺴/㚬;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ᓭ/㺴/㚬;->㚬:Ljava/lang/Object;

    iput-object p2, p0, Lḓ/ᓭ/㺴/㚬;->㺴:Ljava/lang/Class;

    iput-object p3, p0, Lḓ/ᓭ/㺴/㚬;->ḓ:Ljava/lang/String;

    iput-object p4, p0, Lḓ/ᓭ/㺴/㚬;->䆀:Ljava/lang/String;

    iput-boolean p5, p0, Lḓ/ᓭ/㺴/㚬;->ᆻ:Z

    return-void
.end method


# virtual methods
.method public ᆻ()Lḓ/㞘/㚬;
    .locals 2

    iget-object v0, p0, Lḓ/ᓭ/㺴/㚬;->㺴:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lḓ/ᓭ/㺴/㚬;->ᆻ:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lḓ/ᓭ/㺴/㲝;->䂻(Ljava/lang/Class;)Lḓ/㞘/㚬;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lḓ/ᓭ/㺴/㲝;->உ(Ljava/lang/Class;)Lḓ/㞘/䂻;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ḓ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lḓ/ᓭ/㺴/㚬;->㚬:Ljava/lang/Object;

    return-object v0
.end method

.method public ℓ()Lḓ/㞘/உ;
    .locals 1

    invoke-virtual {p0}, Lḓ/ᓭ/㺴/㚬;->㚬()Lḓ/㞘/உ;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lḓ/ᓭ/䂻;

    invoke-direct {v0}, Lḓ/ᓭ/䂻;-><init>()V

    throw v0
.end method

.method public ㄏ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lḓ/ᓭ/㺴/㚬;->䆀:Ljava/lang/String;

    return-object v0
.end method

.method public 㚬()Lḓ/㞘/உ;
    .locals 1

    iget-object v0, p0, Lḓ/ᓭ/㺴/㚬;->䂻:Lḓ/㞘/உ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lḓ/ᓭ/㺴/㚬;->㺴()Lḓ/㞘/உ;

    move-result-object v0

    iput-object v0, p0, Lḓ/ᓭ/㺴/㚬;->䂻:Lḓ/㞘/உ;

    :cond_0
    return-object v0
.end method

.method public abstract 㺴()Lḓ/㞘/உ;
.end method

.method public 䆀()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lḓ/ᓭ/㺴/㚬;->ḓ:Ljava/lang/String;

    return-object v0
.end method

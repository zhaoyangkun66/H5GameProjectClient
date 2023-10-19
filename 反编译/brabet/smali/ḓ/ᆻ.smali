.class public final Lḓ/ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lḓ/㚬;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "L\u1e13/\u36ac<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public volatile 㚬:Ljava/lang/Object;

.field public final 㺴:Ljava/lang/Object;

.field public 䂻:Lḓ/ᓭ/㚬/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u14ed/\u36ac/\u0b89<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lḓ/ᓭ/㚬/உ;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u1e13/\u14ed/\u36ac/\u0b89<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ᆻ;->䂻:Lḓ/ᓭ/㚬/உ;

    sget-object p1, Lḓ/ㄏ;->உ:Lḓ/ㄏ;

    iput-object p1, p0, Lḓ/ᆻ;->㚬:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    iput-object p2, p0, Lḓ/ᆻ;->㺴:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lḓ/ᓭ/㚬/உ;Ljava/lang/Object;ILḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lḓ/ᆻ;-><init>(Lḓ/ᓭ/㚬/உ;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lḓ/䂻;

    invoke-virtual {p0}, Lḓ/ᆻ;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lḓ/䂻;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lḓ/ᆻ;->㚬:Ljava/lang/Object;

    sget-object v1, Lḓ/ㄏ;->உ:Lḓ/ㄏ;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lḓ/ᆻ;->㺴:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lḓ/ᆻ;->㚬:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lḓ/ᆻ;->䂻:Lḓ/ᓭ/㚬/உ;

    invoke-static {v1}, Lḓ/ᓭ/㺴/ಫ;->䂻(Ljava/lang/Object;)V

    invoke-interface {v1}, Lḓ/ᓭ/㚬/உ;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lḓ/ᆻ;->㚬:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lḓ/ᆻ;->䂻:Lḓ/ᓭ/㚬/உ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lḓ/ᆻ;->உ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lḓ/ᆻ;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method

.method public உ()Z
    .locals 2

    iget-object v0, p0, Lḓ/ᆻ;->㚬:Ljava/lang/Object;

    sget-object v1, Lḓ/ㄏ;->உ:Lḓ/ㄏ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

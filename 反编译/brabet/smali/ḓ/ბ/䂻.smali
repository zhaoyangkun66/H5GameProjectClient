.class public final Lḓ/ბ/䂻;
.super Lḓ/ბ/உ;
.source ""


# instance fields
.field public final 㺴:Lḓ/ბ/䂻$உ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lḓ/ბ/உ;-><init>()V

    new-instance v0, Lḓ/ბ/䂻$உ;

    invoke-direct {v0}, Lḓ/ბ/䂻$உ;-><init>()V

    iput-object v0, p0, Lḓ/ბ/䂻;->㺴:Lḓ/ბ/䂻$உ;

    return-void
.end method


# virtual methods
.method public 䆀()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Lḓ/ბ/䂻;->㺴:Lḓ/ბ/䂻$உ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

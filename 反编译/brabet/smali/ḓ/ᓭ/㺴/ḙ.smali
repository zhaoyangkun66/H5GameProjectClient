.class public Lḓ/ᓭ/㺴/ḙ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static உ(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Lḓ/ᓭ/㺴/㖪/உ;

    if-eqz v0, :cond_0

    const-string v0, "kotlin.collections.MutableList"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ḙ;->ḓ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_0
    invoke-static {p0}, Lḓ/ᓭ/㺴/ḙ;->䂻(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ḓ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lḓ/ᓭ/㺴/ḙ;->䆀(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static 㚬(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    const-class v0, Lḓ/ᓭ/㺴/ḙ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->ㄏ(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    return-object p0
.end method

.method public static 㺴(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;
    .locals 0

    invoke-static {p0}, Lḓ/ᓭ/㺴/ḙ;->㚬(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method public static 䂻(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lḓ/ᓭ/㺴/ḙ;->㺴(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static 䆀(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lḓ/ᓭ/㺴/ḙ;->㺴(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    const/4 p0, 0x0

    throw p0
.end method

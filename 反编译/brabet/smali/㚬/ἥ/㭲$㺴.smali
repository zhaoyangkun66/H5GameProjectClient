.class public L㚬/ἥ/㭲$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/㭲$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ἥ/㭲;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# static fields
.field public static உ:L㚬/ἥ/㭲$㺴;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 䂻()L㚬/ἥ/㭲$㺴;
    .locals 1

    sget-object v0, L㚬/ἥ/㭲$㺴;->உ:L㚬/ἥ/㭲$㺴;

    if-nez v0, :cond_0

    new-instance v0, L㚬/ἥ/㭲$㺴;

    invoke-direct {v0}, L㚬/ἥ/㭲$㺴;-><init>()V

    sput-object v0, L㚬/ἥ/㭲$㺴;->உ:L㚬/ἥ/㭲$㺴;

    :cond_0
    sget-object v0, L㚬/ἥ/㭲$㺴;->உ:L㚬/ἥ/㭲$㺴;

    return-object v0
.end method


# virtual methods
.method public உ(Ljava/lang/Class;)L㚬/ἥ/㞘;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "L\u36ac/\u1f25/\u3798;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/㞘;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

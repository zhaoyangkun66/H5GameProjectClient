.class public L㚬/ἥ/㭲$உ;
.super L㚬/ἥ/㭲$㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ἥ/㭲;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# static fields
.field public static 㚬:L㚬/ἥ/㭲$உ;


# instance fields
.field public 䂻:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, L㚬/ἥ/㭲$㺴;-><init>()V

    iput-object p1, p0, L㚬/ἥ/㭲$உ;->䂻:Landroid/app/Application;

    return-void
.end method

.method public static 㚬(Landroid/app/Application;)L㚬/ἥ/㭲$உ;
    .locals 1

    sget-object v0, L㚬/ἥ/㭲$உ;->㚬:L㚬/ἥ/㭲$உ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/ἥ/㭲$உ;

    invoke-direct {v0, p0}, L㚬/ἥ/㭲$உ;-><init>(Landroid/app/Application;)V

    sput-object v0, L㚬/ἥ/㭲$உ;->㚬:L㚬/ἥ/㭲$உ;

    :cond_0
    sget-object p0, L㚬/ἥ/㭲$உ;->㚬:L㚬/ἥ/㭲$உ;

    return-object p0
.end method


# virtual methods
.method public உ(Ljava/lang/Class;)L㚬/ἥ/㞘;
    .locals 5
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

    const-class v1, L㚬/ἥ/உ;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, L㚬/ἥ/㭲$உ;->䂻:Landroid/app/Application;

    aput-object v3, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/㞘;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_2
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

    :catch_3
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

    :cond_0
    invoke-super {p0, p1}, L㚬/ἥ/㭲$㺴;->உ(Ljava/lang/Class;)L㚬/ἥ/㞘;

    move-result-object p1

    return-object p1
.end method

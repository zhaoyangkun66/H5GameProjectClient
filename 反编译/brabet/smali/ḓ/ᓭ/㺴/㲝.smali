.class public Lḓ/ᓭ/㺴/㲝;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:Lḓ/ᓭ/㺴/㞘;

.field public static final 䂻:[Lḓ/㞘/䂻;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lḓ/ᓭ/㺴/㞘;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lḓ/ᓭ/㺴/㞘;

    invoke-direct {v0}, Lḓ/ᓭ/㺴/㞘;-><init>()V

    :goto_1
    sput-object v0, Lḓ/ᓭ/㺴/㲝;->உ:Lḓ/ᓭ/㺴/㞘;

    const/4 v0, 0x0

    new-array v0, v0, [Lḓ/㞘/䂻;

    sput-object v0, Lḓ/ᓭ/㺴/㲝;->䂻:[Lḓ/㞘/䂻;

    return-void
.end method

.method public static உ(Ljava/lang/Class;)Lḓ/㞘/䂻;
    .locals 1

    sget-object v0, Lḓ/ᓭ/㺴/㲝;->உ:Lḓ/ᓭ/㺴/㞘;

    invoke-virtual {v0, p0}, Lḓ/ᓭ/㺴/㞘;->உ(Ljava/lang/Class;)Lḓ/㞘/䂻;

    move-result-object p0

    return-object p0
.end method

.method public static 㚬(Lḓ/ᓭ/㺴/ἥ;)Lḓ/㞘/㺴;
    .locals 1

    sget-object v0, Lḓ/ᓭ/㺴/㲝;->உ:Lḓ/ᓭ/㺴/㞘;

    invoke-virtual {v0, p0}, Lḓ/ᓭ/㺴/㞘;->㚬(Lḓ/ᓭ/㺴/ἥ;)Lḓ/㞘/㺴;

    return-object p0
.end method

.method public static 㺴(Lḓ/ᓭ/㺴/㧦;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lḓ/ᓭ/㺴/㲝;->உ:Lḓ/ᓭ/㺴/㞘;

    invoke-virtual {v0, p0}, Lḓ/ᓭ/㺴/㞘;->ḓ(Lḓ/ᓭ/㺴/㧦;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻(Ljava/lang/Class;)Lḓ/㞘/㚬;
    .locals 2

    sget-object v0, Lḓ/ᓭ/㺴/㲝;->உ:Lḓ/ᓭ/㺴/㞘;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lḓ/ᓭ/㺴/㞘;->䂻(Ljava/lang/Class;Ljava/lang/String;)Lḓ/㞘/㚬;

    move-result-object p0

    return-object p0
.end method

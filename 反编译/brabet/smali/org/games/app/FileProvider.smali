.class public Lorg/games/app/FileProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/games/app/FileProvider$䂻;,
        Lorg/games/app/FileProvider$உ;
    }
.end annotation


# static fields
.field public static final ಫ:Ljava/lang/String;

.field public static final ཇ:Ljava/io/File;

.field public static final ᆻ:Ljava/lang/String;

.field public static ᓭ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/games/app/FileProvider$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public static final ḓ:Ljava/lang/String;

.field public static final ἥ:Ljava/lang/String;

.field public static final ℓ:Ljava/lang/String;

.field public static final ㄏ:Ljava/lang/String;

.field public static final 㚬:[Ljava/lang/String;

.field public static final 㧦:Ljava/lang/String;

.field public static final 㹖:Ljava/lang/String;

.field public static final 㺴:Ljava/lang/String;

.field public static final 䆀:Ljava/lang/String;


# instance fields
.field public 䂻:Lorg/games/app/FileProvider$உ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "AA8FEw4IBU8SFBERDhMVTycoLSQ+MTMuNyglJDM+MSA1KTI="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->㺴:Ljava/lang/String;

    const-string v0, "Ew4OFUwRABUJ"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ḓ:Ljava/lang/String;

    const-string v0, "BwgNBBJMEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->䆀:Ljava/lang/String;

    const-string v0, "AgACCQRMEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ᆻ:Ljava/lang/String;

    const-string v0, "BBkVBBMPAA1MEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ℓ:Ljava/lang/String;

    const-string v0, "BBkVBBMPAA1MBwgNBBJMEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ㄏ:Ljava/lang/String;

    const-string v0, "BBkVBBMPAA1MAgACCQRMEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ಫ:Ljava/lang/String;

    const-string v0, "BBkVBBMPAA1MDAQFCABMEQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->㧦:Ljava/lang/String;

    const-string v0, "DwAMBA=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->㹖:Ljava/lang/String;

    const-string v0, "EQAVCQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/games/app/FileProvider;->ἥ:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PgUIEhENABg+DwAMBA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PhIIGwQ="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/games/app/FileProvider;->㚬:[Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "Tg=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/games/app/FileProvider;->ཇ:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/games/app/FileProvider;->ᓭ:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static varargs உ(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static ᆻ(Landroid/content/Context;Ljava/lang/String;)Lorg/games/app/FileProvider$உ;
    .locals 9

    new-instance v0, Lorg/games/app/FileProvider$䂻;

    invoke-direct {v0, p1}, Lorg/games/app/FileProvider$䂻;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object v2, Lorg/games/app/FileProvider;->㺴:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    if-eqz p1, :cond_9

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/games/app/FileProvider;->㹖:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lorg/games/app/FileProvider;->ἥ:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/games/app/FileProvider;->ḓ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    sget-object v4, Lorg/games/app/FileProvider;->ཇ:Ljava/io/File;

    goto :goto_1

    :cond_1
    sget-object v6, Lorg/games/app/FileProvider;->䆀:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget-object v6, Lorg/games/app/FileProvider;->ᆻ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_3
    sget-object v6, Lorg/games/app/FileProvider;->ℓ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_4
    sget-object v6, Lorg/games/app/FileProvider;->ㄏ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0, v4}, L㚬/ℓ/ḓ/உ;->䆀(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7

    goto :goto_1

    :cond_5
    sget-object v6, Lorg/games/app/FileProvider;->ಫ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, L㚬/ℓ/ḓ/உ;->ḓ(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7

    goto :goto_1

    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_7

    sget-object v6, Lorg/games/app/FileProvider;->㧦:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7

    :cond_7
    :goto_1
    if-eqz v4, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v7

    invoke-static {v4, v1}, Lorg/games/app/FileProvider;->உ(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/games/app/FileProvider$䂻;->㚬(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LAgSEggPBkEADwUTDggFTxIUEREOExVPJygtJD4xMy43KCUkMz4xIDUpMkEMBBUATAUAFQA="

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ig4UDQUPRhVBBwgPBUEMBBUATAUAFQBBBw4TQRETDhcIBQQTQRYIFQlBABQVCQ4TCBUYQQ=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ḓ(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Lorg/games/app/FileProvider;->㺴(Landroid/content/Context;Ljava/lang/String;)Lorg/games/app/FileProvider$உ;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/games/app/FileProvider$உ;->䂻(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static 㚬([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static 㺴(Landroid/content/Context;Ljava/lang/String;)Lorg/games/app/FileProvider$உ;
    .locals 2

    sget-object v0, Lorg/games/app/FileProvider;->ᓭ:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/games/app/FileProvider;->ᓭ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/games/app/FileProvider$உ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p0, p1}, Lorg/games/app/FileProvider;->ᆻ(Landroid/content/Context;Ljava/lang/String;)Lorg/games/app/FileProvider$உ;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Lorg/games/app/FileProvider;->ᓭ:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "JwAIDQQFQRUOQREAExIEQQAPBRMOCAVPEhQREQ4TFU8nKC0kPjEzLjcoJSQzPjEgNSkyQQwEFQBMBQAVAA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "JwAIDQQFQRUOQREAExIEQQAPBRMOCAVPEhQREQ4TFU8nKC0kPjEzLjcoJSQzPjEgNSkyQQwEFQBMBQAVAA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static 䂻([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static 䆀(Ljava/lang/String;)I
    .locals 3

    const-string v0, "Ew=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x10000000

    goto :goto_1

    :cond_0
    const-string v0, "Fg=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FhU="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "FgA="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x2a000000

    goto :goto_1

    :cond_2
    const-string v0, "ExY="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x38000000

    goto :goto_1

    :cond_3
    const-string v0, "ExYV"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, 0x3c000000    # 0.0078125f

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA8XAA0IBUEMDgUEW0E="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const/high16 p0, 0x2c000000

    :goto_1
    return p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/games/app/FileProvider;->㺴(Landroid/content/Context;Ljava/lang/String;)Lorg/games/app/FileProvider$உ;

    move-result-object p1

    iput-object p1, p0, Lorg/games/app/FileProvider;->䂻:Lorg/games/app/FileProvider$உ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "MRMOFwgFBBNBDBQSFUEGEwAPFUEUEwhBEQQTDAgSEggODxI="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "MRMOFwgFBBNBDBQSFUEPDhVBAwRBBBkRDhMVBAU="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    iget-object p2, p0, Lorg/games/app/FileProvider;->䂻:Lorg/games/app/FileProvider$உ;

    invoke-interface {p2, p1}, Lorg/games/app/FileProvider$உ;->உ(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/games/app/FileProvider;->䂻:Lorg/games/app/FileProvider$உ;

    invoke-interface {v0, p1}, Lorg/games/app/FileProvider$உ;->உ(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "ABERDQgCABUIDg9ODgIVBBVMEhUTBAAM"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Lw5BBBkVBBMPAA1BCA8SBBMVEg=="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/games/app/FileProvider;->䂻:Lorg/games/app/FileProvider$உ;

    invoke-interface {v0, p1}, Lorg/games/app/FileProvider$உ;->உ(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p2}, Lorg/games/app/FileProvider;->䆀(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    iget-object p3, p0, Lorg/games/app/FileProvider;->䂻:Lorg/games/app/FileProvider$உ;

    invoke-interface {p3, p1}, Lorg/games/app/FileProvider$உ;->உ(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_0

    sget-object p2, Lorg/games/app/FileProvider;->㚬:[Ljava/lang/String;

    :cond_0
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    array-length p5, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    aget-object v2, p2, v0

    const-string v3, "PgUIEhENABg+DwAMBA=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    const-string v3, "PhIIGwQ="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p4, v1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p3, v1}, Lorg/games/app/FileProvider;->㚬([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v1}, Lorg/games/app/FileProvider;->䂻([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Lw5BBBkVBBMPAA1BFBEFABUEEg=="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

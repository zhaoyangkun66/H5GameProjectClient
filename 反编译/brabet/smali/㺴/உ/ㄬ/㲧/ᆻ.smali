.class public final synthetic L㺴/உ/ㄬ/㲧/ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic உ:L㺴/உ/ㄬ/㲧/ᆻ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ㄬ/㲧/ᆻ;

    invoke-direct {v0}, L㺴/உ/ㄬ/㲧/ᆻ;-><init>()V

    sput-object v0, L㺴/உ/ㄬ/㲧/ᆻ;->உ:L㺴/உ/ㄬ/㲧/ᆻ;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/InstrumentUtility;->㚬(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
